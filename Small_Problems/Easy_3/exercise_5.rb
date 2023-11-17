# My Solution
def square(num)
  multiply(num, num)
end 

def multiply(num_1, num_2)
	num_1 * num_2
end 

puts square(5) == 25

# Further Exploration
def num_to_power(num, power)
  method_call_count = 0
  product = 1

  while method_call_count < power do
    product = multiply(product, num)
    method_call_count += 1
  end 
  product
end 

puts num_to_power(5, 3) == 125
puts num_to_power(5, 2) == 25
puts num_to_power(-8, 2) == 64
