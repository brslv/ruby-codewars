=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:
list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) # returns 'Bart, Lisa & Maggie'
list([ {name: 'Bart'}, {name: 'Lisa'} ]) # returns 'Bart & Lisa'
list([ {name: 'Bart'} ]) # returns 'Bart'
list([]) # returns ''

Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
=end
def list names
  if names.size <= 0
    return ''
  end
  
  last = names[-1][:name]

  names.size == 1 ? last : names.inject([]) do |l, n| 
    l << n[:name] 
  end[0..(names.size - 2)].join(', ') + " & " + last
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) # 'Bart, Lisa, Maggie, Homer & Marge'
p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'}]) # 'Bart, Lisa & Maggie'
p list([{name: 'Bart'},{name: 'Lisa'}]) # 'Bart & Lisa'
p list([{name: 'Bart'}]) # 'Bart', "Wrong output for a single name"
p list([]) # ''
