# My Solution
puts "Please enter an integer greater than 0: "
integer = gets.chomp.to_i 

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

total = 1
current_num = 2

while current_num <= integer
  if operator == 's'
    total = total + current_num
  else
    total = total * current_num
  end 
  current_num += 1
end 

puts "The product of the integers between 1 and #{integer} is #{total}."

# LS Solution
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

# Further Exploration
def compute_sum(number)
  (1..number).inject(:+) 
end

def compute_product(number)
  (1..number).inject(:*)
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end