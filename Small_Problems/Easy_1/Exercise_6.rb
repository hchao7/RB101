#MY SOLUTION
=begin
def triangle(length)
    1..length.times do |index|
    puts "#{' ' *(length - index)}#{'*'*index}"
  end 
end 

triangle(9)
=end 

#LS SOLUTION
=begin
def triangle(num)
  spaces = num - 1
  stars = 1

  #iterate through 9 times 
  #spaces + stars = iterators separate from "n"
  num.times do #|n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
=end 

# FURTHER EXPLORATION - 90d corner top right
=begin
def triangle(length)
  #length = length + 1
  1..length.times do |index|
  puts "#{' ' *index}#{'*'*(length-index)}"
end 
end 
=end 

# 90d corner top left
=begin
def triangle(length)
  length.times do |index|
  puts "#{'*'*(length-index)}#{' ' *index}"
end 
=end

# 90d corner bottom left
def triangle(length)
  length.times do |index|
  index = index + 1
  puts "#{'*'*(index)}#{' ' *(length-index)}"
end 

triangle(9)
