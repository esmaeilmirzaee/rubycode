module Purchaseable
  def purchase(item)
    "#{item} has been bought."
  end
end

class Bookstore
  # include Purchaseable
  prepend Purchaseable
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

bs = Bookstore.new
puts bs.purchase("1984")
