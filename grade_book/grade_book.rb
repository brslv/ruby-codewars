=begin
Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.

Numerical Score	Letter Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.
=end

def get_grade(s1, s2, s3)
  hsh = {a: [90, 100], b: [80, 90], c: [70, 80], d: [60, 70],f: [0, 60]}
  score = [s1, s2, s3].reduce(:+) / 3

  if score == 100 return "A"

  hsh.each do |grade, range|
    return grade.to_s.upcase if (range[0]...range[1]).include?(score)
  end
end

puts get_grade(95, 90, 93)
puts get_grade(100, 85, 96)
puts get_grade(92, 93, 94)

puts get_grade(70, 70, 100)
puts get_grade(82, 85, 87)
puts get_grade(84, 79, 85)

puts get_grade(44, 55, 52)
puts get_grade(48, 55, 52)
puts get_grade(58, 59, 60)

# another solution
puts "---"

def get_grade(s1, s2, s3)
  case (s1 + s2 + s3).fdiv 3
  when 90..100 then "A" # inclusive
  when 80...90 then "B" # exclusive
  when 70...80 then "C"
  when 60...70 then "D"
  else "F"
  end
end

puts get_grade(95, 90, 93)
puts get_grade(100, 85, 96)
puts get_grade(92, 93, 94)

puts get_grade(70, 70, 100)
puts get_grade(82, 85, 87)
puts get_grade(84, 79, 85)

puts get_grade(44, 55, 52)
puts get_grade(48, 55, 52)
puts get_grade(58, 59, 60)
