=begin
Lists are data structures composed of nested objects, each containing a single value and a reference to the next object.

Here's an example of a list in JavaScript:

{value: 1, next: {value: 2, next: {value: 3, next: null}}}
In Python, lists will be represented by a preloaded LinkedList class with the members value and next. Here's an example:

LinkedList(1, LinkedList(2, LinkedList(3)))
Write a function listToArray (or list_to_array in Python) that converts a list to an array, like this:

[1, 2, 3]
Assume all inputs are valid lists with at least one value. For the purpose of simplicity, all values will be either numbers, strings, or Booleans.
=end

def list_to_array(list)
  arr = []
  
  while true 
    arr << list['value']
    list = list['next']
    
    break if list == nil
  end
  
  arr
end

# testing the sln

lists = [
  {'value'=>1, 'next'=>{'value'=>2, 'next'=>{'value'=>3, 'next'=>nil}}},
  {'value'=>"string", 'next'=>nil},
  {'value'=>true, 'next'=>{'value'=>false, 'next'=>{'value'=>"true", 'next'=>{'value'=>"false", 'next'=>nil}}}},
  {'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>nil}}}}}},
  {'value'=>"foo", 'next'=>{'value'=>"bar", 'next'=>nil}}
]

puts list_to_array(lists[0]).to_s # [1, 2, 3])
puts list_to_array(lists[1]).to_s # ["string"])
puts list_to_array(lists[2]).to_s # [true, false, "true", "false"])
puts list_to_array(lists[3]).to_s # [1, 1, 1, 1, 1, 1])
puts list_to_array(lists[4]).to_s # ["foo", "bar"])
