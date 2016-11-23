=begin
The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples:

"din" => "((("

"recede" => "()()()"

"Success" => ")())())"

"(( @" => "))(("
=end

# def dup_enc str
#   str.downcase.split(//).map { |l| str.count(l.downcase) > 1 ? ")" : "(" }.join
# end

def dc word
  letters = word.downcase.split(//)
  letters.map do |l|
    letters.count(l) > 1 ? ")" : "("
  end.join
end

p dc "Success"
