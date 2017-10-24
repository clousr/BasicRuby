class Gadget
  #every instance variables are protected and secret when calling for code, must be found through methods
  # getter methods? read
  attr_reader :production_number
  def initialize(username,password)#must have all the variables?
    @username = username
    @passwords = password
    @production_number = generate_production_number#a defiinition
  end
  def to_s# overwrites normal .to_s method
    "Gadget #{@production_number} has the username #{@username}.
     It is made from the #{self.class} class
     and it has the ID #{self.object_id}"#{must use the @-called the sigil on the variable to do this}
  end

  private # everything below this line will not be accessable

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = Gadget.new("user","password")
#no longer is this accesable do to the private methods
##p phone.generate_production_number
