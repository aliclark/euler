
oneTo100 = [1..100]
square n = n * n

sumSquares numbers = sum (map square numbers)
squareSum numbers = square (sum numbers)

diffSums numbers = (squareSum numbers) - (sumSquares numbers)

