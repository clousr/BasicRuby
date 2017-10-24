class Car
  attr_reader :maker
  def drive
    "room! room!"
  end
  def initialize(maker)
    @maker = maker ####must have class varible equal to instance variable
  end
end

class Firetruck < Car
  attr_reader :sirens
  def initialize(maker, sirens)
    super(maker) #???
    @sirens = sirens
  end
  def drive
    super() + " beep beep"
  end
end

class Supercar < Car
  def drive(speed)
    super() + " beep beep, I'm driving at #{speed} miles per hour"
    #super must have the parentheses to pass in speed
    #literally means passing no arguments up
  end
end

ft = Firetruck.new("ford", 5)
p ft.drive
p ft.maker
p ft.sirens

lambo = Supercar.new("lambo")
p lambo.drive(400)
p lambo.maker
