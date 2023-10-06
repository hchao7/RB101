5.step(to:10, by:3) {|value| puts value}

=begin
Answer: 5, 8

Reflection:
method signature step(by: step, to: limit) { |i| block } → self
step method takes two keyword arguments (:to, :by)
Keyword arguments are usually symbols 
The argument named :by is a "step" value, while the argument named :to is a limit.git l