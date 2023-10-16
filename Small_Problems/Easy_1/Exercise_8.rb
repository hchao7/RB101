# My Solution
=begin
def reversed_number(num)
 num_string = num.to_s
 while (num_string.size > 1 && num_string[num_string.size-1] == '0')
  num_string = num_string[0, num_string.size-1]
 end
 num_string.reverse.to_i
end
=end

# LS Solution
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
puts reversed_number(0) == 0
puts reversed_number(000) == 0

# While loop will break if:
# Reaches a non-zero number
# Reaches 0 and that's the only digit left



