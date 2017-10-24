class ConvenienceStore
  include Enumerable
  attr_reader :snacks, :notsnacks
  def initialize
    @snacks =[]
    @notsnacks= ["g", "roror"]
  end

  def add_snacks(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new

bodega.add_snacks("Doritos")
bodega.add_snacks("cookies")
bodega.add_snacks("burritos")

p bodega.snacks
p bodega.sort

bodega.each { |snack| puts "#{snack} are delicious"}#block variable must match

#very confused
