module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end
class Bookstore
  include Purchasable
end
class Supermarket
  include Purchasable
end

class CornerMart < Supermarket #creates CornerMart subclass of Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("books")

kroger = Supermarket.new
#can override the purchase def in a subclass
p kroger.purchase("cookie")

yodel = CornerMart.new
p yodel.purchase("item")


p CornerMart.ancestors
