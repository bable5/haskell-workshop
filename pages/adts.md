---
layout: default
title: ADTs
order: 5
---

###Algebraic Data Types

ADTs allow you to define new types. ADTs start with <code>data</code>, have a type name, and one or more constructors. Type names and constructors start with a capitol letter.

```Haskell
data Bool = True | False
```

```Haskell
data Tree a = Tree (Tree a) a (Tree a) | Empty 
            deriving Show
```

The constructors can be pattern matched.

```Haskell
toList :: Tree a -> [a]
toList empty = []
toList (Tree l1 v l2) = toList l1 ++ [v] ++ toList l2
```

###Exercise
* Write an insert function for a binary search tree.

<button class="button" onclick="$('#insertAnswer').toggle();">Solution</button>
<div id="insertAnswer" style="display: none">

```Haskell
insert :: Ord a => Tree a -> a -> Tree a
insert Empty x = Tree Empty x Empty
insert (Tree l v r) x
    | x == v = Tree l v r
    | x < v  = Tree (insert l x) v r
    | x > v  = Tree l v (insert r x)
```

</div>

