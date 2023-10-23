=begin
# MY SOLUTION
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the wdith of the room in meters:"
width = gets.chomp.to_f

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts "The area of the room is #{area_in_meters} square meters " +
     "(#{format('%.2f', area_in_feet)} square feet)."

# LS Solution
SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."

=end 

# Further Exploration
puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the wdith of the room in feet:"
width = gets.chomp.to_f

area_feet = (length * width).round(2)
area_inches = (area_feet * 12).round(2)
area_centimeters = (area_inches * 10).round(2)

puts "The area of the room is #{area_feet} square feet "\
     "(#{area_inches} square inches)."\
     "(#{area_centimeters} square centimeters)."    


# Reflection
# Use a constant <SQMETERS_TO_SQFEET> to store the connversion number
# Do this anytime you have a number whose meaning is not immediately obvious
# To continue the code to the next line, add a \ (backslash)
