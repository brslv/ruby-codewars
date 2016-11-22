def sort_entities(arr)
  hsh = ('a'..'z').inject({}) { |h, x| h[x.to_sym] = Array.new; h }

  arr.each do |el|
    el_letter = el.split(//).select { |e| e =~ /[[:alpha:]]/ }[0].to_sym
    hsh[el_letter].push(el)
  end

  sorted = []

  hsh.each do |k, v|
    next if v.nil?

    v.each { |y| sorted.push(y) }
  end

  sorted
end

def apply_operators(numbers)
  result = 0.0
  i = 0
  
  numbers.each do |x|
    case i
    when 0, 1
      result += x
    when 2
      result -= x
    when 3
      result *= x
    when 4
      result /= x
    end

    i += 1
    i = 1 if i > 4
  end

  result.round
end

def solution(str)
  sorted = sort_entities(str.split(' '))
  only_numbers = sorted.map { |x| x.split(//).select { |y| y =~ /[[:digit:]]/ }.join.to_i }
  apply_operators(only_numbers)
end

p solution("24z6 1z23 y369 89z 900b")
