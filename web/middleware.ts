import { createServerClient, type CookieOptions } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

// Refresh session Supabase di tiap request supaya token auth tidak
// kedaluwarsa saat user aktif menjelajah situs (pola standar @supabase/ssr).
export async function middleware(request: NextRequest) {
  let response = NextResponse.next({ request });

  // Supabase project belum terhubung — lewati refresh session daripada
  // melempar error di setiap request (lihat lib/queries.ts untuk guard yang
  // sama pada query data).
  if (!process.env.NEXT_PUBLIC_SUPABASE_URL || !process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY) {
    return response;
  }

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet: { name: string; value: string; options?: CookieOptions }[]) {
          cookiesToSet.forEach(({ name, value }) => request.cookies.set(name, value));
          response = NextResponse.next({ request });
          cookiesToSet.forEach(({ name, value, options }) =>
            response.cookies.set(name, value, options ?? {})
          );
        },
      },
    }
  );

  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Dashboard admin: cek role di sini juga (bukan cuma di layout /admin)
  // supaya non-admin di-redirect sebelum halaman sempat dirender sama
  // sekali. Query profiles cuma dijalankan untuk path /admin, tidak di
  // tiap request, supaya tidak nambah roundtrip DB ke semua halaman.
  if (request.nextUrl.pathname.startsWith("/admin")) {
    if (!user) {
      const loginUrl = new URL("/login", request.url);
      return NextResponse.redirect(loginUrl);
    }

    const { data: profile } = await supabase.from("profiles").select("role").eq("id", user.id).maybeSingle();

    if (profile?.role !== "admin") {
      return NextResponse.redirect(new URL("/", request.url));
    }
  }

  return response;
}

export const config = {
  matcher: ["/((?!_next/static|_next/image|favicon.ico).*)"],
};
