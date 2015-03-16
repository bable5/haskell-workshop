---
layout: default
title: Types
order: 4
---

### Basics

* Every expression has a type
* Haskellers can either supply the types or let the compiler infer them. 
  The compiler will tell you when the types don't match

* Give a name a type:

```Haskell
add :: Int -> Int
t :: [Int]
```

####Built in types

* Int, Float, Double, Char


###Excerise

* Use ':t' Ask ghci what it thinks about the types of these expressions:
  * 'a'
  * [1, 2, 3, 4]
  * (True, 0)

###Type Variables

* We can use a <it>type variable</it> to makes functions more generic.
* For example, functions that manipulate lists often do not care about the
  type of lists's elements

```Haskell
reverse :: [a] -> [a]
```

###Type classes

* Type classes are similar to Java interfaces. A type becomes an instance of a 
  type class when it has all the functions that class requires

```Haskell
class Show a where
  show :: a -> String

instance Show Hello
  show m = "hello"
```

* Type classes give you flexibility. They let you write functions according to the 'capabilities' of the type, instead of an actual type.

* Type classes can be used to constrain a type variable

```Haskell
sort :: Ord a => [a] -> [a]
```

