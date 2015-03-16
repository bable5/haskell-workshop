---
layout: default
title: Lists
order: 3
---

Empty List

```haskell
empty = []
```
List with a few elements

```haskell
numbers = [1, 2, 3, 4]
```

Concatinate lists with the <code>++</code> operator

```haskell
concat = [1,2] ++ [3,4]
```

Functions on lists

```haskell
sumAll [] = 0
sumAll (x:xs) = x + sumAll xs
```

List Comprehension

```haskell
[x*2 | x <- [1..10]]
[(x, x*x) | x <- [1..10]]
[x | x <- [1..100] , x `mod` 2 == 0]
```

Lists can be infinite

```Haskell
let all = [1..]
take 10 all
```

###Exercises

* Sorting a list. Quick sort takes a list. It then recursively quick sorts a list which
  contains all of the elements smaller than the first element of the current list and
  sorts a list which contains all the elements larger than the first element of the
  current list. Finally, in concatinates elements back together.

<button class="button" onclick="$('#sortingAnswer').toggle();">Solution</button>
<div id="sortingAnswer" style="display: none">

```haskell
quickSort [] = []
quickSort (x:xs) = quicksort [e | e <- xs, e <= x] ++ [x] ++ quicksort [e | e <- xs, e > x]
```
</div>
