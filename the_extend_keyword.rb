module Announce
  def who_am_i
    p "the name of this class is #{self}"
  end
end

class Dog
  extend Announce
end
class Cat
  extend Announce
end

watson = Dog.new
# the extend method will make the class=self
#essentially Extend the module to a class
# watson.who_am_i will not work
Dog.who_am_i
