---
layout: default
title: Syntax
order: 3
---

### Pattern Matching

* Haskell can choose which version of a function executes based on what the input value looks like. We've already seen this with lists.

```Haskell
chose1 1 = "One"
chose1 2 = "Two"
chose1 3 = "Three"
chose1 x = "Many"
```

### Where and Let

Let you define names (local variables) in a function

```Haskell
fun = a + b + c where
    a = 1
    b = 2
    c = 3
```

```Haskell
fun = let a = 1
          b = 2
          c = 3 in
       a + b + c
```





