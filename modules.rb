module LengthConversions
  WEBSITE = "https://www.udemy.com/home/my-courses/learning/"

  def self.miles_to_feet(miles)#self can be replaced with LengthConversions, but this is more futureproof
    miles * 5280
  end
  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet *12
  end
  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end
p LengthConversions.miles_to_feet(100)
p LengthConversions.miles_to_centimeters(100)
