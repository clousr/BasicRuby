def sum(*numbers)#numbers will represent an array
  sum = 0
  numbers.each{|num| sum += num}
  sum
end

p sum(1,1,1)
