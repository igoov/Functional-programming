triangulo :: Int -> Int -> Int -> Bool
triangulo a b c =
    a + b > c &&
    a + c > b &&
    b + c > a