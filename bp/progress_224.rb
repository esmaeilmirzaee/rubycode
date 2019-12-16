module Purchaseable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  include Purchaseable
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

class Supermarket
  include Purchaseable
end

# Inheritance
class CornerMart < Supermarket

end

class Amazon < Bookstore

end
barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

shoprite = Supermarket.new
p shoprite.purchase("Ice cream.")

quickstop = CornerMart.new
p quickstop.purchase("Slim Jim")

p Bookstore.ancestors
puts
bn = Bookstore.new
p bn.purchase('1984')

az = Amazon.new
p az.purchase("Make your bed")
