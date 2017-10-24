#classes and superclasses
p 4.class
p 4.class.superclass
p 4.class.superclass.superclass
p 4.class.ancestors
p 4.class.methods
p 4.methods


class Gadget #1st needs to be capitalized
end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts Gadget.superclass

puts phone
p laptop.methods
puts microwave.class
