import { createBrowserClient } from "@supabase/ssr";

// Dipakai di Client Component ("use client"). Publishable key aman dipakai
// di browser karena akses datanya dibatasi Row Level Security di database,
// bukan oleh key itu sendiri — lihat notes/supabase/setup-client.md.
export function createClient() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!
  );
}
