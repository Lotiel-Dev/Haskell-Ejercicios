import Data.Time.Calendar (Day)
--Definir una función que devuelva el mayor de 2 números
max2 :: (Ord a) => a -> a -> a
max2 a b = if a > b then a else b


--Definir una función que reciba 3 números y devuelva el mayor
max3 :: (Ord a) => a -> a -> a -> a
max3 a b c = max a (max b c)


--Definir una función que reciba 4 números y devuelva el mayor
max4 :: (Ord a) => a -> a -> a -> a -> a
max4 a b c d = max (max a b) (max c d)


--Definir una función que reciba dos exámenes parciales, un final 
--y una segunda instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el caso.
calificar :: (Ord a, Num a) => a -> a -> a -> a -> String
calificar parcial1 parcial2 final segundaInstancia
    | parcial1 == 0 || parcial2 == 0 || final == 0 = "Abandono"
    | final >= 4 || segundaInstancia >= 4 = "Aprobado"
    | otherwise = "Reprobado"


--Definir una función que reciba 2 fechas y devuelva la fecha mayor
maxFecha :: Day -> Day -> Day
maxFecha = max