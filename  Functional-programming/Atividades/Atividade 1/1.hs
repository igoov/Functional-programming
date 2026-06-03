formaTriangulo :: Int -> Int -> Int -> Bool
formaTriangulo a b c = 
    (a + b > c) && (a + c > b) && (b + c > a) 
    