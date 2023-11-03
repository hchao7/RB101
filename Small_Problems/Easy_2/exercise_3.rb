# My Solution and Further Exploration
puts "What is the bill? "
bill = gets.chomp.to_f

puts "What is the tip percentage? "
tip_percentage = gets.chomp.to_f
tip = (bill * (tip_percentage/100)).round(2)
total_bill = (bill + tip).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The tip is $#{format('%.2f', total_bill)}"

# Reflection
# Keep note of #format
# Keep note of round(2) method


