module LengthConversions
  WEBSITE = "https://www.udemy.com/home/my-courses/learning/"

  def self.miles_to_feet(miles)#self can be replaced with LengthConversions, but this is more futureproof
    miles * 5280
  end
  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet *12
  end
  def miles_to_centimeters
    inches = self.miles.miles_to_inches
    inches * 2.54
  end
end

class TestClass
  include LengthConversions
  attr_accessor:miles
  def initialize(miles)
    @miles = miles
  end
end
p LengthConversions.miles_to_feet(100)
var = TestClass.new(100)
p var.miles
p var.miles_to_centimeters
