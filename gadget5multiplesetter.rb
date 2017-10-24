class Gadget
  #every instance variables are protected and secret when calling for code, must be found through methods
  # getter methods? read
  attr_reader :production_number, :apps
  attr_accessor :username, :passwords #getter/setter

  def initialize(username,password)#will run every time the new class object is created
    @username = username
    @passwords = password
    @production_number = generate_production_number#a defiinition
    @apps = []
  end
  def to_s  # overwrites normal .to_s method
    "Gadget #{@production_number} has the username #{@username}.
     It is made from the #{self.class} class
     and it has the ID #{self.object_id}"#{must use the @-called the sigil on the variable to do this}
  end
  def password=(new_password)
    if validate_password(new_password)
      @passwords = new_password
    end
  end
  def reset(username,password)#use self method for security
    self.username = username
    self.passwords = password
    self.apps = []
  end

  private # everything below this line will not be accessable
  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2017"
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)#private
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end



phone = Gadget.new("user","password_attempt_123")
#no longer is this accesable do to the private methods
##p phone.generate_production_number
p phone.passwords #password did not passtest
phone.password=("Iamgreat")
p phone.passwords
