=begin
In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function, 811181 will come out.
Note: The function accepts an integer and returns an integer
=end

def square_digits num
    num.to_s.split('').map{ |d| d.to_i ** 2 }.join('').to_s
end

puts square_digits(9118) # 811164
