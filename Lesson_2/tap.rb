#mapped_array = array.map { |num| num + 1 }
#mapped_array.tap { |value| p value } # => [2, 3, 4]

(1..10)                 .tap{|x| p x } #1 .. 10
 .to_a                  .tap{|x| p x } #[1, 2, 3.. 10]
 .select {|x| x.even? } .tap{|x| p x } #[2, 4, 6.. 10]
 .map {|x| x*x }        .tap{|x| p x } #[4, 16, 36.. 100]