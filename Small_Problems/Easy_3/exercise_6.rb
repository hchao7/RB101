# My Solution
def xor?(operand_one, operand_two)
  if (!!(operand_one || operand_two) == true) && (!!(operand_one && operand_two) == false)
    true
  else
    false
  end 
end 

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# LS Solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end 

# Reflection
=begin
17: The && operator returns "truthy", which is then evaluated to true, if
value1 is truthy and !value2 is true (value2 is falsey)
18: This is the same as above, but switched

# Review: 11/17
5 && 6 == true
returns false

if 5 && 6
  puts "dog"
end 
returns nil
# dog

=end 