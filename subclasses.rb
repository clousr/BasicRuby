class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "I am #{name} and I am #{age} years old"
  end
end


boris = Employee.new("Boris", 25)

class Manager < Employee
  #super keyword will pull from superclass the identical function and do additional functionalities
  def initialize(name, age, rank)
    super(name,age)#will be sent to Employee class
    @rank
  end
  def yell
    "who is the boss?"
  end
  #overwriting function
  def introduce
    result = super
    result += "I'm also a manager!"
  end
end

class Worker < Employee
  def introduce
    "I like me, #{name}, I am #{age}"
  end
  def clock_in(time)
    "starting my shift at #{time}"
  end
  def yell
    "poop"
  end
end

bob = Manager.new("bob", 45, "mid-class")
dan = Worker.new("daniel", 36)

#################################3
p bob.yell
p dan.clock_in(1200)


######################################
puts dan.is_a?(Worker)
puts dan.is_a?(Employee)
puts dan.instance_of?(Worker)
puts dan.instance_of?(Employee)# only calls the exact class


p bob.introduce
p dan.introduce

p Manager.ancestors

p Manager.superclass

p Manager < Employee
