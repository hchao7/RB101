def repeat(phrase, integer)
  integer.times do
    puts phrase
  end
end

repeat('Hello', 1)
puts "\n"
repeat('Hello', 0)
puts "\n"
repeat('Hello', 2)

=begin 
# Reflection
You can use the .times method, which will call
the given block "self" times with each integer in 0..self-1
.times is an instance method for Integers