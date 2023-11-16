# My Solution
def negative(num)
  if num.negative?()
    num
  else 
    num * -1
  end

end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby


arg = "hot"
def mimic_pass_by_reference(arg)
  arg << "dog"
end 

puts mimic_pass_by_reference(arg)
puts arg

2.times do
  a = 'hi'
  puts a
end 

loop do
  puts a
  break
end 

puts a