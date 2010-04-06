
-- Let us call an integer sided triangle with sides a ≤ b ≤ c barely obtuse if the sides satisfy
-- a^(2) + b^(2) = c^(2) - 1.

sq n = n*n

barelyObtuse a b c = ((a <= b) && (b <= c)) &&
                     (((sq a) + (sq b)) == ((sq c) - 1))

-- How many barely obtuse triangles are there with perimeter ≤ 75,000,000?


