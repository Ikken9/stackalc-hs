operator :: Char -> ([Double] -> [Double])
operator op = case op of
  x | x `elem` ['0', '1','2','3','4','5','6','7','8','9'] -> (\ns -> (read[x] :: Double):ns)
  '+' -> (\(n1:n2:ns) -> (n1 + n2):ns)
  '-' -> (\(n1:n2:ns) -> (n1 - n2):ns)
  '*' -> (\(n1:n2:ns) -> (n1 * n2):ns)
  '/' -> (\(n1:n2:ns) -> (n1 / n2):ns)
  
main :: IO
main = do
