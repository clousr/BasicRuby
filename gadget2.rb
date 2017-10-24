class Gadget
  #every instance variables are protected and secret when calling for code, must be found through methods
  # getter methods? read
  def initialize(username,password)#must have all the variables?
    @username = username
    @passwords = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"#{read only}
  end
  def to_s# overwrites normal .to_s method
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"#{must use the @-called the sigil on the variable to do this}
  end
  #attribute accessor
  attr_accessor :username #reader writer
  attr_reader :production_number #reader, can separate via a comma
  attr_writer :password #writer
end

g1 = Gadget.new("ruby", "code")
p g1.username
g2 = Gadget.new("ass", "hole")
g3= Gadget.new("link", "zelda")
