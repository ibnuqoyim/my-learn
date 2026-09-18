---
title: Memahami Closure
date: 2024-01-10
---

Closure adalah fungsi yang "mengingat" variabel dari scope tempat ia dibuat, meskipun fungsi luar sudah selesai dieksekusi.

```js
function buatCounter() {
  let jumlah = 0;
  return function () {
    jumlah++;
    return jumlah;
  };
}

const counter = buatCounter();
console.log(counter()); // 1
console.log(counter()); // 2
```

Poin penting:

- Setiap pemanggilan `buatCounter()` menghasilkan closure baru dengan `jumlah` masing-masing.
- Variabel `jumlah` tetap hidup di memori selama closure-nya masih dipakai.
- Sering dipakai untuk membuat data privat, seperti pola module.

## Sumber

- [Closures — MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)
