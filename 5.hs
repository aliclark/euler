
numbersFrom n = n : numbersFrom (n + 1)

divisibleBy n x = (mod x n) == 0

divisibleIn lst x = all (\y -> divisibleBy y x) lst

primes :: [Integer]
primes = sieve [2..]
    where sieve (p:xs) = p : sieve [x | x<-xs, x `mod` p /= 0]

findDivisible n = head (filter (divisibleIn [((floor (n / 2)) + 1)..n])
                                   (numbersFrom 1))

