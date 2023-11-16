# My Solution
puts "Please write word or multiple words: "
word = gets.chomp

word_array = word.chars
word_array.delete(' ')

puts "There are #{word_array.size} characters in \"#{word}\"."