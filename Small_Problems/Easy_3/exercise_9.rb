# My Solution
def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end 

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# LS Solution
def palindromic_number?(int)
  palindromic?(int.to_s)
end 

def palindrome?(str)
  str == str.reverse
end 

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
