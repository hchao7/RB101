# My Solution
def center_of(text)
  index = text.size/2
  text.size.even? ? text[index-1, 2] : text[index]
end 

# LS Solution

# Other Solution

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'