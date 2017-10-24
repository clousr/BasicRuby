p "hello".length
p "hello".upcase
p "HELLO".downcase
p "heLLo".capitalize # >> Hello

word="woRld"

p word.length
p word.size
p word.class
p word.size.class
p word.reverse
p word.swapcase
word.upcase!#bang method is permanent
p word

p 10.next #+1
p 10.next()
p 10.+(2)
p 10.+2
p 10.div(5)
p 10.to_s #to string #to_i is to integer to_f for float
p 10.class
p 10.0.class
p 10.5.floor
p 10.5.ceil
p 3.14159.round
p 3.14159.round(3)
p 31.14159.round(3)
p -35.75.abs

puts "hello"
puts "hello".inspect

p "hello"

a = 10
p a
a += 5
p a

b = 20
p b
b *= 5
p b

5.downto(1) { |i| puts "#{i}".to_i}
5.upto(10) { |i| puts "#{i}".to_i}

1.step(16, 3) do |num|
  puts num
end
20.step(100,20){|n| puts n}
