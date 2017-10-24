class Bicycle
  #class variables are protected by default
  @@maker = "Biketech"
  @@count = 0

  def self.description#must have the self. or name of the Class(not best practice)
    "I'm the blueprint for a #{self} object"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end

end

p Bicycle.description
p Bicycle.count

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count
