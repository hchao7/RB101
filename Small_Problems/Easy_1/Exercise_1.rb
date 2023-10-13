
def repeat(phrase, integer)
  integer.times do |element|
    puts element
    puts phrase
  end
end
repeat('dog', 4)

=begin 
# Reflection
You can use the .times method, which will call
the given block "self" times with each integer in 0..self-1
.times is an instance method for Integers
=end