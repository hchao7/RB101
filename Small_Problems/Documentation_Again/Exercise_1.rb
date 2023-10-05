# Locate ruby documentation for methods File::path and File#path

=begin 
File:: path
I think I remember "File" being a kind of class or module, 
which means ::path would be a class method? And # would be an instance method...
I can't remember.

Answer: 
File is a class. A File object is a representation of a 
file in the underlying platform.

File::path > On the class File page, look at the left bar, under Methods
File#path > You might have to visit File's parent class (I/0)
=end

puts File.path('bin')
# Method is called on the File class

puts f = File.new('blah.txt')
puts f.path
# Method is called on an object of the File class, called f

=begin
Reflections:
:: means class method
# means instance method
If you can't find a specific method, you should check out the parent class.
Or, you can look at older versions of Ruby documentation — they might have it!
=end