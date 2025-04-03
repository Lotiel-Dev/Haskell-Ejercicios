import GHC.Real (notANumber)
--EJERCICIO 3 (Resolver usando Distinción de casos)
--1. Definir una función que reciba 4 número y devuelva el mayor.
-- Por combinación.
-- Por distinción de casos.
mayor4 :: (Ord a) => a -> a -> a -> a -> a
mayor4 a b c d
    | a >= b && a >= c && a >= d = a
    | b >= a && b >= c && b >= d = b
    | c >= a && c >= b && c >= d = c
    | otherwise = d

--2. Definir una función que reciba una nota y devuelva el mensaje “Aprobado” o “Reprobado”.
aprobado :: (Ord a, Num a) => a -> String
aprobado nota
    | nota >= 51 = "Aprobado"
    | otherwise = "Reprobado"
--3. Definir una función que reciba una nota y devuelva el mensaje “Excelente“ si la nota
--esta entre 90-100, “Bien” si esta entre 70-89, “Regular” si esta entre 51-69 y mal si esta
--entre 0-50.
nota :: (Ord a, Num a) => a -> String
nota nota
    | nota >= 90 && nota <= 100 = "Excelente"
    | nota >= 70 && nota < 90 = "Bien"
    | nota >= 51 && nota < 70 = "Regular"
    | otherwise = "Mal"
--4. Definir una función que reciba como argumentos las notas de primer parcial, segundo
--parcial, final y segunda instancia y retorne el mensaje aprobado o reprobado, según el
--caso.
--5. Definir una función que reciba 16 números y retorne el mayor
--6. Definir una función que reciba un quebrado y devuelva verdad si este es mayor que 1
--y falso en otro caso
--7. Definir una función que reciba 2 fechas y devuelva la fecha mayor

--8. Definir una función que reciba 2 fechas y devuelva los años transcurridos
--9. Definir una función que reciba 2 fechas y devuelva los meses transcurridos
--10. Definir una función que reciba 2 fechas y devuelva los días transcurridos
--11. Definir una función que reciba 2 fechas y devuelva los días, meses y años
--transcurridos
--12. Definir una función que reciba un instante (fecha, hora) e incremente el instante en 1
--segundo.