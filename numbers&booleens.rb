p 10>12
p 10<12
p 10<=10

p 10.odd?
p 11.odd?

p 10.even?
p 11.even?

p 10==10
p 10==11
p 10==10.0

p 10!=10
p 10!=5

word = "hello"
p "hello" != "fuck off"
p "hello" == "Hello"
p "hello".downcase == "Hello".downcase
p "apple"<"banana"
p "Z"<"a"
p "Z".downcase < "a".downcase #uppercase are before lowercase
p word.include?("or")
p word.include?("OR")
p word.empty?
p word.nil?
p "".empty?
p "".nil? #returns false

p 20.between?(1,21)
p word.next
p word.respond_to?("next")
p word.respond_to?("length")
p word.respond_to?(:next)#better due to mem usage

#opposite booleenss with !
puts !false
puts !!false

#spaceshpip
p  1 <=> 2
p  2 <=> 2
p  3 <=> 2

# .is_a? type of object
p word.is_a?(String)
#BasicObject>Object>various other classes


#start/end with and include with
phrase = "I am so so amazing"
p phrase.start_with?("the")
p phrase.start_with?("I am")
p phrase.end_with?("I am")
p phrase.include?("so so")
