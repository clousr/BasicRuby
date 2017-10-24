#from 1-100
#if num/ 3 > fizz
#if num/ 5 > buzz
#if num/3 & 5, fizzbuzz

def fizzbuzz(num)
  three = (num%3==0)
  five = (num%5==0)
  if three && !five
    "fizz"
  elsif five && !three
    "buzz"
  elsif three && five
    "FizzBuzz"
  end
end

i=0

until i>= 100
  i +=1
  if fizzbuzz(num=i).class==String
    puts "#{i} " + fizzbuzz(num=i)
  end
end
