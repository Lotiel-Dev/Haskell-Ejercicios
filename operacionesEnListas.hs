--Definir una funcion que reciba una lista y devuelva el elemento del medio
elementoMedio :: [a] -> a
elementoMedio xs = xs !! (length xs `div` 2)


--Definir una funcion que reciba una lista y devulva True si todos sus elementos son iguales
todosIguales :: Eq a => [a] -> Bool
todosIguales [] = True
todosIguales (x:xs) = all (== x) xs


--Definir una funcion que reciba una lista y devuelva True si la lista esta ordenada de forma ascendente
listaOrdenada :: Ord a => [a] -> Bool
listaOrdenada xs = and (zipWith (<=) xs (tail xs))



--Definir una funcion que reciba una matriz (lista de listas) y un entero K y devuelva la fila K de la matriz
obtenerFila :: [[a]] -> Int -> [a]
obtenerFila matriz k = matriz !! k


--Definir una funcion que reciba una matriz (lista de listas) y un entero K y devuelva la columna K de la matriz
obtenerColumna :: [[a]] -> Int -> [a]
obtenerColumna matriz k = map (!! k) matriz



--multiplicar :: Num a => a -> [[a]] -> [[a]]
multiplicar :: Num b => [b] -> [b]
multiplicar matriz  = map (*2) matriz