class OlympicMedal
  #mixins
  # comparables <,>,<=>, between? etc.
  include Comparable #?? Have to tell ruby how to compare
  Medal_Values = {"gold"=> 3, "silver" =>2, "bronze" => 1}

  attr_reader :type #??

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if Medal_Values[type] < Medal_Values[other.type]
      -1
    elsif Medal_Values[type] == Medal_Values[other.type]
      0
    else
      1
    end
  end
end

  bronze = OlympicMedal.new("bronze",5)
  silver = OlympicMedal.new("silver", 10)
  gold = OlympicMedal.new("gold", 3)

  p silver > bronze
