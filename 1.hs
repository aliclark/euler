
numsFrom n = n : numsFrom (n + 1)

multiplesOf n = map (* n) (numsFrom 1)

threes = multiplesOf 3
fives  = multiplesOf 5

divisibleByThree x = (mod x 3) == 0

hundredThrees = takeWhile (< 1000) threes
hundredFives  = filter (\x -> (not (divisibleByThree x)))
                (takeWhile (< 1000) fives)

answer = sum (map sum [hundredThrees, hundredFives])


= (numbers-from n) (append n (numbers-from (increment n)))
= (multiples n) (map (* n) (numbers-from 1))
= (divisible-by-three? x) (zero? (modulus x 3))
= not-divisible-by-three? (complement divisible-by-three?)

= threes (multiples 3)
= fives  (multiples 5)

= hundred-threes (take-while (< 1000) threes)
= hundred-fives (filter not-divisible-by-three? (take-while (< 1000) fives))

= answer (sum (map sum (list hundred-threes hundred-fives)))

