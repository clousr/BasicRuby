local_variable="order"

def introduction
  puts "hello"
  puts "mother"
  puts "fucker"
  local_variable="chaos"#{only within the method}
  puts local_variable
end

puts local_variable

3.times do
  introduction
end

def parameters(name,age)
  puts "I am #{name}"
  puts "you are #{age}xdumb"
  puts "#{name} is better than you"
end

parameters("Ryan",25)
parameters "Helios", 24
p1=parameters("ass", "hole")
p p1.class

def add(num1,num2)
  return num1+num2#return will explicitly kill the method here
end

p add(5,9)

def nothing
end

p nothing

def no_parameters
  puts "I like pasta" # will also return a nil
end
def no_parameters_2
  puts "I love pasta"
  "pasta is great" #replaces the nil
end

p no_parameters
p no_parameters.class#nilclass
p no_parameters_2
p no_parameters_2.class#string

#method call in a method
def subt(a,b)
  a-b
end
def mult(a,b)
  a*b
end
def add(a,b)
  a+b
end

def calc(a,b,operation= "add")
  if operation== "add"
    add(a,b)
  elsif operation=="subt"
    subt(a,b)
  elsif operation=="mult"
    mult(a,b)
  else
    "impossible"
  end
end

p calc(10,4)
p calc(10,4,"subt")
