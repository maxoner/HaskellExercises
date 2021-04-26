module Perms where 
{-
Воспользовавшись функциями map и concatMap, определите функцию perms, которая возвращает все перестановки, которые можно получить из данного списка, в любом порядке.

GHCi> perms [1,2,3]
[[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

!!Считайте, что все элементы в списке уникальны, и что для пустого списка имеется одна перестановка.
-}

perms :: [a] -> [[a]]
perms xs = map (concatMap (genPerm xs)) xs
  where
    genPerm :: a -> [[a]]
    genPerm (x:xs) = map 
    genPerm x = x : filter (/=x) xs 

