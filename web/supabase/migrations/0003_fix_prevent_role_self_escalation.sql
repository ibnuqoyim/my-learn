-- Sudah diterapkan ke project Supabase live pada 2026-09-21 lewat
-- Supabase MCP (apply_migration, nama "fix_prevent_role_self_escalation_direct_sql").
-- File ini merekonstruksi migrasi itu untuk riwayat di Git — isinya identik.
--
-- Memperbaiki bug di 0002: auth.role()/auth.uid() cuma terisi kalau
-- request lewat PostgREST dengan JWT (app biasa, atau service_role key).
-- Koneksi SQL langsung (SQL Editor dashboard, Management API, migrasi)
-- tidak bawa JWT sama sekali, jadi auth.uid() NULL di situ — versi 0002
-- cuma mengecek auth.role() = 'service_role', jadi baris SQL langsung pun
-- ikut diblokir (padahal itu justru jalur resmi buat promote admin
-- pertama, lihat web/README.md). Perbaikan: anggap auth.uid() IS NULL
-- (tidak ada konteks JWT sama sekali = akses langsung ke database)
-- sebagai privileged juga, sama seperti service_role.
create or replace function public.prevent_role_self_escalation()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if auth.uid() is null or auth.role() = 'service_role' then
    return new;
  end if;
  if new.role is distinct from old.role and not public.is_admin() then
    new.role := old.role;
  end if;
  return new;
end;
$$;
