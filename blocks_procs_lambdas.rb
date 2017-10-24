def pass_control
  p "this is inside method"
  yield # pass control to the block
  p "back inside the method"
end

pass_control{p "soooooo coool dude"}
#pass_control #will not work w/o block

pass_control do
  p "doing yeild"
  p "yeah dude"
end

def multi_pass
  p "this is inside method"
  yield # pass control to the block
  p "back inside the method"
  yield
end

#procs
a=[1,2,3,4,5]
b=[6,7,8,9,10]
c=[11,12,13,14,15]

a_cubes=a.map { |num| num**3}#block is not object
b_cubes=b.map { |num| num**3}
c_cubes=c.map { |num| num**3}

p a_cubes
p b_cubes
p c_cubes

cubes = Proc.new{|number| number ** 3}
a_proc_cubes=a.map(&cubes)#block is not object
b_proc_cubes=b.map(&cubes)
c_proc_cubes=c.map(&cubes)

p a_proc_cubes
p b_proc_cubes
p c_proc_cubes

#block given?
def pass_control_on_condition
  p "this is inside method"
  if block_given?
    yield # pass control to the block
  end
  p "back inside the method"
end

pass_control_on_condition
pass_control_on_condition{p "inside the block"}

#yeild with argument
def speak_the_truth(name)
  yield name if block_given?
end
#variables must match in the block
speak_the_truth("me") {|name| puts "#{name} is brilliant"}
# useful when you want to change the behavior
#of a def at the time of calling

#custom each method
def each_method(array)
  i = 0
  while i< array.length
    yield array[i]
    i +=1
  end
end

names = ["no diggity", "bulletproof", "stan"]
nums=[10, 20, 30]

each_method(names) do |name|
  puts "the length of #{name} is #{name.length}!"
end


#procs 2
def greet
  p "greet method"
  yield
end

phrase = Proc.new do
 p "inside the proc"
end

greet(&phrase)
phrase.call

#method as a proc
p ["1", "2", "3"].map { |num| num.to_i}
p ["1", "2", "3"].map(&:to_i)

#procs as a method argument
def talk_about(name, &myproc)
  puts "tell me about #{name}"
  myproc.call(name)
end

good = Proc.new do |name|
  puts "#{name} is great"
end

bad = Proc.new do |name|
  puts "#{name} is terrible"
end
talk_about("jeff", &good)
talk_about("joe", &bad)

#lambdas
# how they treat the wrong # of arguments
#procs will return nil
#lambdas will return error
#cubes proc
p nums
p nums.map(&cubes)
p cubes.call(5)
cubes_lambda= lambda{|num| num**3}
p nums.map(&cubes_lambda)
p cubes_lambda.call(5)

#procs will return to entire method
#lambdas will return to the lambda

def diet
  status = lambda{return "you gave in"}
  status.call
  "you completed the diet!"
end


def diet2
  status = Proc.new{return "you gave in for diet2"}
  status.call
  "you completed the diet2!"
end

p diet
p diet2

#lambda efficiency
#lamdas as parameters do not need &
