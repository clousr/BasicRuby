# if statements are great for evaluating passwords,text responses, word lengths, return numbers
# if false or nil will not run
#elsif will end if condition is met
#else will run as a catch all

color="green"

if color =="red"
  puts "rad"
elsif color=="green"
  puts "graad"
else
  puts "Jesus on a raptor"
end#must have end with Ruby

age = 25
ticket = "vip"
id = true

#and = &&
if age>21 && ticket="vip" && id==true#can write just id
  puts "you are a vip"
end

if age>21 && ticket && id
  puts "welcome to the show"
end

#or = ||

def authenticate(rank,name,cred)
  if (rank==007 && name=="James") || cred=="secret"
#parenthesis indicate priority or set
    puts"access granted"
  else you
    puts "access denied"
  end#nested if, else, elsif statements must have and end
end

authenticate(007, "James", "spy")

#ternary operator condition ? true : false
puts 1<2 ? "yes" : "no"

#default and optional parameters must go at the end of params
def phone(num,int=1,area=404)
  puts "calling #{int}-#{area}-#{num}"
end
phone(1234567)
phone(7654312,2,321)

#case methods
def foods(food)
  case food
  when"steak" #can also be used with ranges
    "steak sauce"
  when "tacos", "burritos" then "cheesy"
  else
    "IDK"
  end
end

puts foods("steak")

#opposite booleenss with !
puts !false
puts !!false

# unless method
pass = "wee"

if pass.include?("a")
  puts "aaaaa"
end

unless pass.include?("a")
  puts "it does not have 'a'"
end

#while key, useful for password attempts, gets.chomp and alternating true/false

i = 0

while i<5
  i += 1
  puts i
end

#until key
until i<2
  i -= 1
  puts i
end





#inline modifiers
num=2000
if num >100
  puts "huge"
end

puts "huge" if num>100

#conditional assignment, only if y is nil
y = nil
p y

 y ||=5
 p y

 y ||= 99
 p y

name = "me"
x = name[5]#for array ie dict[0][1]
puts x
x ||= "Z"
puts x

#spaceshpip
p  1 <=> 2
p  2 <=> 2
p  3 <=> 2
