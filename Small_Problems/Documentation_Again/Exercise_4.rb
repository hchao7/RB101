a = [1, 4, 8, 11, 15, 19]

puts a.bsearch {|element| element > 8}

=begin
Answer: 11

Reflection:
The bsearch takes a block argument
=end