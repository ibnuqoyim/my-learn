---
title: List Comprehension
date: 2024-02-05
---

List comprehension adalah cara ringkas membuat list baru dari list/iterable lain.

```python
angka = [1, 2, 3, 4, 5, 6]

# cara biasa
genap = []
for n in angka:
    if n % 2 == 0:
        genap.append(n)

# dengan list comprehension
genap = [n for n in angka if n % 2 == 0]
```

Pola umum: `[ekspresi for item in iterable if kondisi]`.

Bisa juga dipakai untuk dictionary comprehension:

```python
kuadrat = {n: n**2 for n in angka}
```

## Sumber

- [List Comprehensions — Python Docs](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions)
