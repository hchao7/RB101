def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

=begin
Answer: 4, 2, 3, 6

Reflection:
First, assign positional arguments. 
a = 4, d = 6
Then, assign the default arguments.
b = 2
Then, assign the default values.
c = 3
=end 