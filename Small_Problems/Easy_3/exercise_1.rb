nums_array = []
current_position = 1

while current_position <= 5
  ending = current_position < 4 ? "st" : "th"
  puts "Enter the #{current_position}#{ending} number: "
  num = gets.chomp.to_i
  nums_array << num
  current_position += 1
end 

puts "Enter the last number:"
num = gets.chomp.to_i

phrase = nums_array.include?(num) ? "appears" : "does not appear"
puts "The number #{num} #{phrase} in #{nums_array}."