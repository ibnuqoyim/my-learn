-- Sudah diterapkan ke project Supabase live pada 2026-09-21 lewat
-- Supabase MCP (apply_migration, nama "add_admin_rbac"). File ini
-- merekonstruksi migrasi itu untuk riwayat di Git — isinya identik.

-- RBAC: role user biasa vs admin, dipakai dashboard /admin untuk CRUD notes/categories.
alter table profiles add column if not exists role text not null default 'user' check (role in ('user', 'admin'));

create or replace function public.is_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1 from public.profiles
    where id = auth.uid() and role = 'admin'
  );
$$;

drop policy if exists "categories_admin_write" on categories;
create policy "categories_admin_write" on categories
  for all using (public.is_admin()) with check (public.is_admin());

drop policy if exists "notes_admin_all" on notes;
create policy "notes_admin_all" on notes
  for all using (public.is_admin()) with check (public.is_admin());

-- Kunci kolom role: user biasa tidak boleh self-promote jadi admin lewat
-- update ke baris profilnya sendiri (RLS profiles_owner_update cuma cek
-- kepemilikan baris, bukan kolom mana yang berubah).
create or replace function public.prevent_role_self_escalation()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if auth.role() = 'service_role' then
    return new;
  end if;
  if new.role is distinct from old.role and not public.is_admin() then
    new.role := old.role;
  end if;
  return new;
end;
$$;

drop trigger if exists prevent_role_self_escalation on profiles;
create trigger prevent_role_self_escalation
  before update on profiles
  for each row execute procedure public.prevent_role_self_escalation();
