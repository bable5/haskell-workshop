---
layout: default
title: Basics
order: 2
---

###GHCI

Ghci is the haskell REPL

```bash
$> ghci
```

to start the REPL or

```bash
$> ghci Module.hs
```

to start the REPL and load a Haskell file called <em>Module.hs</em>


###Hello World

```Haskell
putStrLn "Hello World"
```

###Names in ghci

Names are defined in ghci with the keyword <code>let</code>

```Haskell
let a = \ x -> x * x
```

###Source Files

* Each source file is a module.
* The file name matches the module name
* Modules start with a Capitol Letter

For example:

```Haskell
module M1 where

foo a b = a - b
```

* Source files are qualifed by the directory structure.
* A module called 'Foo.Bar.Baz' is located at 'Foo/Bar/Baz'


###Functions

Functions are simple to define.

```
<NAME> <ARG>* = expression
```

Functions names always start with a lower case letter

For example: 

```Haskell
add a b = a + b
```

###Exercises:

* In ghci define a function that can subtract 2 numbers.
* Write a Haskell module with the <code>add</code> function
    * Load your module into GHCI and add two numbers


