name = "Vertis"

p "Hello #{name}, get fucked"

age = 25

p "I am #{age} years old"

p "#{age+5}, yeah!"

variable = String.new("Neal")

p variable

words = <<MLS
This is a multi line String
  tabs are preserved


so will line breaks
MLS

p words
print words

#escape characters
puts "1'2'3"
puts '1"2"3'

puts "1\"2\"3"

puts "line\n break"
p "line\n break"
puts 'no line\n break with single quotes'
puts "double allows #{variable}"
puts 'no #{variable} with single'

puts "\ttab is here"
p "\ttab is here"

p age.to_s + name
agename = age.to_s.concat(name)#will overwrite if not assigned to variable
p agename

p age.to_s << name << "WEEEE"

nameage = age.to_s.prepend(name)
p nameage

story = "In a galaxy far far away and long long ago" #count starting at 0, index position

#strings and ranges
p story
p story [0]
p story [0,8]
p story [0,story.length-5]
p story [5..10] #5-10
p story [5...10] #5-9
p story [5..-3]
p story [-1]
p story [-1, 5]
p story.slice(1)

thing = "rocket ship"
thing[0]="p"
p thing
thing[-4,4] = "shop"
p thing

#count method
p story.count("an")#counts both characters

#index on a string, returns an integer
p story.index("a",4)#second variable will start there
p story.rindex("a")#reverse

#insert on a string
p thing
p thing.insert(-1, "s are great")#permanent mutation
p thing
string=thing

#sqeeze method, removes duplicates in a row, not permanent
#clear method clears the string
p string
string.clear
p string

#delete method
string = "hello world"
string.delete!("l")
p string
 #regular expression syntax
p string =~ /o/#{ first o}
p /eo/ =~ string
# /./ Period= wildcard
p /./ =~ string

#scan method
p story
p story.scan(/a/)
p story.scan(/a/).length
p story.scan(/[ar]/)#every a or e
p story.scan(/[ar]/).length
p story.scan(/a/)
num_example = "you are a 123-456-687 jeff"
p num_example.scan(/\d/)# any digit
p num_example.scan(/\d+/)# any digits in a row
num_example.scan(/\d+/) { |digits| p digits.length}#no p at front bc it is in the block method
# /./ on scan method will yeild all char
# /.XX/ period is still wildcard
# /\./ this is the actual Period call
# /\D/ everything except for digits
# /\s/ spaces , /\s+\ spaces in a row
# /\S/ everything except spaces

#anchors
p num_example.scan(/\A\D/)#beginning
p num_example.scan(/eff\z/)#end
#exclude
p num_example.scan(/[^aeiouAEIOU]/)
p num_example.scan(/[^aeiouAEIOU,\s\d\.]/)

#sub and gsub method
p num_example.sub("jeff", "John")#first occurance
p num_example

p num_example.gsub("-", "<><>")#all occurance
p num_example

#rubular.com
