
def say(words) #words is method parameter
  puts words   #words is method local variable (?)
end

say("hello")


def factors(number)
	divisor = number
  factors = []
  loop do
		break if divisor == 0 || divisor < 0
		factors << number / divisor if number % divisor == 0
    divisor -= 1 
	end
  factors
end

puts factors(0) == []
puts factors(-5) == []
puts factors(5) == [1, 5]