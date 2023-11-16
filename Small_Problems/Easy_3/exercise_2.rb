# My Solution
puts "Enter the first number: "
first_num = gets.chomp.to_i

puts "Enter the second number: "
second_num = gets.chomp.to_i

results_array = [first_num + second_num, first_num - second_num, first_num * second_num, first_num / second_num, first_num % second_num, first_num ** second_num]
operations_array = %w(+ - * / % **)

iterator = 0
while iterator <= 5 do
  puts "#{first_num} #{operations_array[iterator]} #{second_num} = #{results_array[iterator]}"
  iterator += 1
end 

# Other Solution
# Use a function for prompt messages 
def prompt(message)
  puts "=> #{message}"
end 