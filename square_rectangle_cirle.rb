#should only store 1 module or class per file

module Square # must have uppercase maodulename
  def self.area(side)
    side*side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14
  def self.area(radius)
    PI * radius ** 2
  end
end

p Square.area(5)
