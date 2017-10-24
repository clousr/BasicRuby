#protected methods can only compare objects of the same class
class Car
  def initialize(age,miles)
    base_value = 20000
    age_deduction = age *1000
    miles_deduction = (miles/10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "your car is better" : "your car is worse" #self?
  end

  protected
  attr_reader :value# replacing 3 lines below
  #  def value
  #    @value
  #  end
end

civic = Car.new(3, 30000)
fiat = Car.new(1, 20000)

p civic.compare_car_with(fiat)# works bc civic=self and car=fiat, def value is accesable to other methods
p fiat.value #will not work because @value is private in initialize and proteced in value method or attr_reader
