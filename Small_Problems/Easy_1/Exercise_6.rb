#MY SOLUTION
=begin
def triangle(length)
    length.times do |index|
    puts "#{' ' *(length - (index+1))}#{'*'*(index+1)}"
  end 
end 

triangle(9)

#LS SOLUTION
def triangle(num)
  spaces = num - 1 # number of spaces you want to start with
  stars = 1 # do not use "n" as an iterator, use 1 instead

  #iterate through 9 times 
  #spaces + stars = iterators separate from "n"
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(9) 
=end 

# FURTHER EXPLORATION - 90d corner top right
def triangle(length)
  length.times do |index|
  puts "#{' ' *index}#{'*'*(length-index)}"
end 
end 

triangle(9) 

# 90d corner top left
=begin
def triangle(length)
  length.times do |index|
  puts "#{'*'*(length-index)}#{' ' *index}"
end 

# 90d corner bottom left
def triangle(length)
  length.times do |index|
  index = index + 1
  puts "#{'*'*(index)}#{' ' *(length-index)}"
end


triangle(9)
end