# My Solution
def palindrome?(str)
  str == str.reverse
end 

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# Further Exploration
def palindrome_array?(str)
  str == str.reverse
end 


def palindrome_array_str?(str)
  str == str.reverse
end 