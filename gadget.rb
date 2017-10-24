class Gadget
  #every instance variables are protected and secret when calling for code, must be found through methods
  # getter methods? read
  def initialize#must have all the variables?
    @username = "user #{rand(1..100)}"#{read write}
    @passwords = "topsecret"#{write only}
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"#{read only}
  end
  def info
    "Gadget #{@production_number} has the username #{@username}"#{must use the @-called the sigil on the variable to do this}
  end
  def to_s# overwrites normal .to_s method
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"#{must use the @-called the sigil on the variable to do this}
  end
  #attribute accessor
  attr_accessor :username #reader writer
  attr_reader :production_number #reader, can separate via a comma
  attr_writer :password #writer
  #def username
  #  @username
  #end
  #def production_number
    #@production_number
#  end
  #def username=(new_username) #gets chomp
  #  @username = new_username
  #end
#  #  @password = new_password
  #end
end

phone = Gadget.new
laptop = Gadget.new
p phone
p laptop
p laptop.instance_variables
p phone.info #object.object (object.method) syntax structure. phone is called the receiver


#to find unique class methods available
p phone.methods - Object.methods
#shiny = Gadget.new
#flashy = Gadget.new
#p shiny.object_id
#p flashy.object_id
#glossy = shiny
#p glossy.ob#ject_id

#overwriting a method
p phone.to_s #self in to_s will point to that object

#to find overwritten methods????

#self keyword

#getter methods
p phone.username
p phone.production_number

#setter method
phone.username=("1234")
p phone.username
