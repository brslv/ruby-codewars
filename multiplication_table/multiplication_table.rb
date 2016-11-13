=begin
Create a function that accepts dimensions, of Rows x Columns, as parameters in order to create a multiplication table sized according to the given dimensions. **The return value of the function must be an array, and the numbers must be Fixnums, NOT strings.

Example:

multiplication_table(3,3)

1 2 3
2 4 6
3 6 9

-->[[1,2,3],[2,4,6],[3,6,9]]

Each value on the table should be equal to the value of multiplying the number in its first row times the number in its first column.
=end

def multiplication_table(n, m)
  (1..n).map { |x| (1..m).map { |y| x * y } }
end

p multiplication_table(3, 3) # [[1,2,3], [2,4,6], [3,6,9]]
p multiplication_table(3, 4) # [[1,2,3,4], [2,4,6,8], [3,6,9,12]]
p multiplication_table(1, 1) # [[1]]
p multiplication_table(0, 0) # [[]]
