---
title: Dasar Branching di Git
date: 2024-03-01
updated: 2026-09-18
---

Branch memungkinkan kita bekerja pada fitur/perbaikan tanpa mengganggu kode di branch utama.

```
main         A---B-------------E---F
                  \             /
fitur-baru         C-----------D
                (git checkout -b)   (git merge fitur-baru)
```

Branch `fitur-baru` bercabang dari commit `B` di `main`, berkembang sendiri
lewat commit `C` dan `D`, lalu digabungkan (merge) kembali jadi commit `E`
di `main` — sepanjang itu, isi `main` (`A`, `B`) tidak berubah sama sekali.

```bash
# membuat branch baru sekaligus pindah ke branch itu
git checkout -b fitur-baru

# melihat semua branch
git branch

# pindah branch
git checkout main

# menggabungkan branch ke branch aktif saat ini
git merge fitur-baru

# menghapus branch yang sudah tidak dipakai
git branch -d fitur-baru
```

Praktik yang baik: buat satu branch untuk satu fitur/perbaikan, beri nama yang jelas, dan gabungkan (merge) setelah selesai direview.

## Sumber

- [Git Branching - Branches in a Nutshell — Pro Git Book](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
