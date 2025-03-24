--Definir una funcion que reciba el lado de un cuadrado y devuelva el area
areaCuadrado:: Num a => a -> a
areaCuadrado x = x * x
--Definir una funcion que reciba la base y la altura de un rectangulo y devuelva su area y su perimetro
rectangulo:: Num a => a -> a -> (a, a)
rectangulo base altura = (base * altura, 2 * base + 2 * altura)
--Definir una funcion que reciba la base y la altura de un triangulo y devuelva su area y su perimetro
triangulo :: Floating a => a -> a -> (a, a)
triangulo base altura =
    let lado = sqrt ((base / 2) ^ 2 + altura ^ 2)  -- Calculamos los lados iguales
        area = (base * altura) / 2
        perimetro = base + 2 * lado
    in (area, perimetro)
--Definir una funcion que reciba 2 numeros y devuelva verdad si el primero es mayor que el segundo
esMayor :: Ord a => a -> a -> Bool
esMayor x y = x > y
--Definir una función que reciba un número y retorne verdad si este es múltiplo de 2
esMultiploDe2 :: Integral a => a -> Bool
esMultiploDe2 n = n `mod` 2 == 0
esMultiploDe2b :: Integral a => a -> Bool
esMultiploDe2b n = mod n 2 == 0
--Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y de 3 al mismo tiempo.
esMultiploDe2y3 :: Integral a => a -> Bool
esMultiploDe2y3 n = n `mod` 2 == 0 && n `mod` 3 == 0
--Definir una función que reciba un número y lo devuelva elevado a la potencia 3.
cubo :: Num a => a -> a
cubo n = n ^ 3
--Definir funciones que reciban un número y lo devuelvan elevado a la potencia 4,8,10,32.
potencias :: Num a => a -> a
potencias n = n ^ 4
potencias2 :: Num a => a -> a
potencias2 n = n ^ 8
potencias3 :: Num a => a -> a
potencias3 n = n ^ 10
potencias4 :: Num a => a -> a
potencias4 n = n ^ 32
--Definir una función que reciba dos números y una función de orden y devuelva verdad si los números obedecen a la función de orden, falso en otro caso.
obedeceOrden :: (a -> a -> Bool) -> a -> a -> Bool
obedeceOrden f x y = f x y
--ejemplos: obedeceOrden (>) 5 3     obedeceOrden (==) 4 4      obedeceOrden (/=) 6 6