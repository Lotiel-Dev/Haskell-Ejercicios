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

