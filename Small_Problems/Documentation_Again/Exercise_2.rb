require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# Answer:
# -4712-01-01
# 2016-01-01
# 2016-05-01
# 2016-05-13

=begin
Reflections:
The signature documentation for civil:
3.2v: new(year = -4712, month = 1, mday = 1, start = Date::ITALY) → date
2.5v or 3.1v: civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

If you don't include something in the outermost brackets, you can't include
the innermost brackets inside of it.
Example:
If you don't include month, you can't include mday or start=Date::ITALY
You can supply year. If you don't supply something, it will default to the default value.
=end


