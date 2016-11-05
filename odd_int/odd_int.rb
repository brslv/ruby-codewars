=begin
Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
=end

def find_it(seq)
  seq.inject({}) do |hsh, k|
    hsh[k] = hsh.key?(k) ? hsh[k] + 1 : 1
    hsh
  end.select{ |k, v| v.odd? }.keys.first
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) # 5
puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) # -1
puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) # 5
puts find_it([10]) # 10
puts find_it([1,1,1,1,1,1,10,1,1,1,1]) # 10

# another solution
puts '---'

def find_it(seq)
  seq.uniq.each do |num|
    return num if seq.count(num).odd?
  end
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) # 5
puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) # -1
puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) # 5
puts find_it([10]) # 10
puts find_it([1,1,1,1,1,1,10,1,1,1,1]) # 10
