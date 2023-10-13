#My Method
=begin
def print_in_box(text)
  num_characters = text.length
  puts "+-" + "-"*num_characters + "-+"
  puts "| " + " "*num_characters + " |"
  puts "| " + text + " |"
  puts "| " + " "*num_characters + " |"
  puts "+-" + "-"*num_characters + "-+"
end 
=end

#LS Method
=begin
def print_in_box(message)
  message = message.slice!(0, 80) if message.size > 80
  puts message
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end
=end

#LS METHOD: FURTHER EXPLORATION
=begin
def print_in_box(message)

  if message.size < 76   # if message is less than 76 characters
    horizontal_rule = "+#{'-' * (message.size + 2)}+" #message size + two more hyphens
    empty_line = "|#{' ' * (message.size + 2)}|"
    puts horizontal_rule
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal_rule

  else
    horizontal_rule = "+#{'-' * 78}+" # print out first two lines: will reach max width
    empty_line = "|#{' ' * 78}|"
    puts horizontal_rule               
    puts empty_line                   
    while message.size > 76           # iterate through the message, print 76 characters each time
      puts "| #{message.slice!(0, 76)} |" # splice message destructively
    end 
    puts "| #{message}#{' ' * (76-message.length)} |" if message.length > 0 # remainder line
    puts empty_line
    puts horizontal_rule
  end 

end

print_in_box('At the Tufts School of Engineering, we are committed to partnering with leading industries, governmental entities, and Tufts alumni to drive positive change throughout the world.')
=end

# OTHER SOLUTIONS
=begin
def split_by_length(string, length)
  string = string.dup
  substrings = []
  substrings << string.slice!(0, length) until string.empty?
  substrings
end

def print_in_box(string)
  box_width = [80, string.length + 4].min

  border_row = ('-' * (box_width - 2)).center(box_width, '+')
  padding_row = (' ' * (box_width - 2)).center(box_width, '|')

  substrings = split_by_length(string, box_width - 4)

  puts border_row
  puts padding_row

  substrings.each do |substring| 
    substring = substring.center(box_width - 2, ' ')
    puts "|#{substring}|"
  end

  puts padding_row
  puts border_row
end
=end

# NEW SOLUTION - 10/13/23
def split_text(text)
  iteration_max = text.size/76
  iteration_max.times do 
    puts "| #{text.slice!(0,76)} |"
  end
  puts "| #{text}#{' ' * (76 - text.size)} |" if text.size.remainder(76) != 0
end 

def print_in_box(text)
  if text.size < 80
    horizontal_rule = "+#{'-' * (text.size + 2)}+"
    empty_line = "|#{' ' * (text.size + 2)}|"
    puts horizontal_rule
    puts empty_line
    puts "| #{text} |"
    puts empty_line
    puts horizontal_rule

  else
    horizontal_rule = "+#{'-' * 78}+"
    empty_line = "|#{' ' * 78}|"
    puts horizontal_rule
    puts empty_line
    split_text(text)
    puts empty_line
    puts horizontal_rule
  end 
end 

# NEW, CLEANER SOLUTION - 10/13/23

split_text('At the Tufts School of Engineering, we are committed to partnering with leading industries, governmental entities, and Tufts alumni to drive positive change throughout the world.')
