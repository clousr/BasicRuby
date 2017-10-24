class Array# allows patching in functionalities
  def sum# this version of ruby has the sum method
    total = 0
    self.each {|item| total += item if item.is_a?(Numeric)}
    total
  end
end

sample = [12,34,56]
p sample.sum

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night ot the Living Dummy", "R.L. Stien", 340)


class Book
  def read
    1.step(@pages, 10) do |page|# jumps in steps of 10, starts at 1
      p "reading #{page}"
    end
    p "done #{@title} was great"
  end
end

animal_farm = Book.new("animal farm", "george orwell", 320)
animal_farm.read
