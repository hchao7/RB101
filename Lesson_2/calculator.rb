# ask the user for two numbers
# ask the user for a operation to perform
# perform the operation on the two numbers
# output the result
=begin
answer = gets

# invoke a method (gets) > it doesn't look anything different from a method
# cuz in Ruby, you don't need parantheses for a method call 
# these are the same
puts answer
puts(answer)

# gets and puts looks like they out in space
# they're in a module called kernel 
Kernel.gets
Kernel.puts

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()
Kernel.puts(number1 + " " + number2)

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
  # result = number1.to_i() / number2.to_i()
  # ruby considers this integer divison and omits decimal values

end 
# this does not create a block, thereforre
# you can access 'result' outside of the if statement

Kernel.puts("The result is #{result}")
# THE BREAKDOWN
# gets() returns a string
# chomp() returns a string
# assigned to number1

=begin
Kernel.puts(number1.inspect())
Kernel.puts("the number is: " + number1 + "!")
=end 


if operator = 1
  puts "dog"
else 
  puts "dog"
end