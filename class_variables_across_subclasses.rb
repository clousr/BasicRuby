class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter +=1
  end
end


class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter +=1
  end
end

class Thing < Product
  @@thing_counter = 0
  def initialize
    super
    @@thing_counter += 1
  end
  def self.counter
    @@thing_counter
  end
end

a = Widget.new
b = Widget.new

p Widget.counter.to_s + " widgets"
p Product.counter.to_s + " products"

c = Thing.new
d = Thing.new

p Widget.counter.to_s + " widgets"
p Thing.counter.to_s + " thing"
p Product.counter.to_s + " products"
