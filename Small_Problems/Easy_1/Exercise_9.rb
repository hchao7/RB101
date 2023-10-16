# My Solution
def center_of(text)
  index = text.size/2
  text.size.even? ? text[index-1, 2] : text[index]
end 

# LS Solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

# Other Solution
# All similar to mine

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'