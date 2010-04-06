
fibs x y = x : (fibs y (x + y))

answer = sum (takeWhile (<= 4000000) (filter even (fibs 1 2)))

