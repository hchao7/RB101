=begin
def stringy(integer)
  string = ''
  i = 0
  while i < integer
    if i.odd?
      string = string + '0'
    else 
      string = string + '1'
    end 
    i = i + 1
  end
  return string
end 

def stringy(integer)
  string = ''
  i = 0
  while i < integer
    next_num = i.odd? ? '0' : '1'
    string = string + next_num
    i = i + 1
  end
  return string
end 

# Further Exploration
=begin
Modify stringy so it takes an additional optional argument 
that defaults to 1. If the method is called with this argument set 
to 0, the method should return a String of alternating 0s and 1s, 
but starting with 0 instead of 1.
=end 

def stringy_with_choice(integer, choice = 1)
  string = ''
  integer.times do |i|
    if choice == 1
      next_num = i.odd? ? '0' : '1'
      string = string + next_num

   else
      next_num = i.odd? ? '1' : '0'
      string = string + next_num
   end 
   
  end
  return string
end 


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy_with_choice(3, 0) == '010'
