a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) {|index| index**2}

=begin
Answer:
Error. The method will perform bounds-checking and realize this index is out of bounds.
If the index is not within range, then this default value will be returned.
If the index is not within range, then whatever this block outputs will be returned.

Reflection: 
If documentation has multiple lines, then this indicates that an argument is optional.
a.fetch(7)
a.fetch(7, 'blah')
a.fetch(7) {|index| index ** 2}
=end