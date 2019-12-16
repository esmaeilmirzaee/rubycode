class ConvenienceStore
  include Enumerable             # adding this line makes this class to access
  # to all built-in methods
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  # This definition and include help to access built-in methods.
  def each
    snacks.each do |snack|
      yield snack
    end
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Slim Jims")
bodega.add_snack("Doritos")
bodega.add_snack("Jolly Ranchers")
bodega.each { |snack| puts "#{snack} is delicious." }

p bodega.any? { |snack| snack.length > 10 }
p bodega.all? { |snack| snack.length > 3 }
p bodega.map { |snack| snack.upcase }

p bodega.snacks
p bodega.select { |snack| snack.downcase.include?('j') }
p bodega.reject { |snack| snack.upcase.include?('J') }

p bodega.snacks
p bodega.sort
p bodega.first
# p bodega.last
