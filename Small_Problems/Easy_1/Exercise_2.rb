def is_odd?(integer)
  #integer % 2 == 1 || integer % 2 == -1
  return !(integer.remainder(2) == 0)
end

#OTHER SOLUTIONS
def is_odd?(number)
  number.remainder(2) != 0
end

def is_odd?(int)
  int.abs.remainder(2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=begin
# Reflection
% is a modulo operator, not a remainder operator
% vs. remainder operator:

Remainder operators return negative results if the number on the left is negative,
5 / 2 > pos
5 / -2 > pos
-5 / -2 > neg
-5 /2 > neg

Modulo always returns a non-negative result if the number on the right is positive.
5 / 2 > pos
5 / -2 > neg
-5 / -2 > neg
-5 /2 > pos

If you weren't certain whether % were the modulo or remainder operator, 
how would you rewrite #is_odd? so it worked regardless? 


The Integer#remainder method performs a remainder operation in Ruby. 
Rewrite #is_odd? to use Integer#remainder instead of %. 
