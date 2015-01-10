module List where 

emptyList = []

oneElement = "1":[]
oneElement' = ["1"]

appendList = [1] ++ [2]

cons [] = []
cons (x:xs) = x

cdr [] = undefined
cdr (x:xs) = xs


