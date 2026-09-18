import { createServerClient, type CookieOptions } from "@supabase/ssr";
import { cookies } from "next/headers";

// Dipakai di Server Component / Route Handler / Server Action. Membaca &
// menulis session lewat cookie request Next.js.
export async function createClient() {
  const cookieStore = await cookies();

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet: { name: string; value: string; options?: CookieOptions }[]) {
          try {
            cookiesToSet.forEach(({ name, value, options }) => {
              cookieStore.set(name, value, options as CookieOptions);
            });
          } catch {
            // Dipanggil dari Server Component (bukan Server Action/Route
            // Handler) — boleh diabaikan kalau ada middleware yang me-refresh
            // session di tiap request.
          }
        },
      },
    }
  );
}
