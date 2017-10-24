
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {})
  #additional guards
  defaults = {age: 35, occupation: "Candidate", hobby: "running", birthplace:"usa"}
  defaults.merge!(details)
  @name  = name
  @age  = defaults[:age]
  @occupation  = defaults[:occupation]
  @hobby  = defaults[:hobby]
  @birthplace  = defaults[:birthplace]
  end
end

info = {age: 53, occupation: "banker", hobby: "fishing", birthplace: "kentucky"}
senator = Candidate.new("Mr. Smith", info)
p senator.hobby
#much benefits with hash as a instance variable
