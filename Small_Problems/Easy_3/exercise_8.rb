def palindrome?(str)
  str == str.reverse
end 

def real_palindrome?(str)
  str.downcase!
  str.gsub!(/[^0-9a-z]/i, '')
  palindrome?(str)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

# LS Solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

# Further Exploration
=begin
the delete method, which accepts multiple character selectors
=end