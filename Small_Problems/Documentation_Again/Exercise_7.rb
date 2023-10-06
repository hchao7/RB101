s = 'abc'
puts s.public_methods.inspect

=begin 
Answer: s.public_methods(all = false).inspect

Reflection: 
Ruby is an object oriented method, so every value in Ruby is an object
and has an associated class.
Class has a superclass or parent, and if you inherit from the Superclass/Parent = 
inherit the superclass method

Look for method descriptions in documentation of parent
publicmethods(all = true/false) -> all = optional argument
true: return all methods available to the class
false: return all methohds defined directly in the class

=end