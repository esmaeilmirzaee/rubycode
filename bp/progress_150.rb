empty_hash = {}

p empty_hash
p empty_hash.class

empty_array = []
p empty_array

nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}
nba_roaster = {"Cleveland Cavaliers" => ["LeBron James", "Kevin Love"],
               "Golden State Warriors" => ["Stephen Curry", "Klay Thompson"]}
p nfl_roster
p nfl_roster["Tony Romo"]
p nba_roaster["Cleveland Cavaliers"]
p nba_roaster["Cleveland Cavaliers"][0]
p nba_roaster["Cleveland Cavaliers"][2]
p "=" * 20

p :name
p :name.class
p :name.methods
p "name"
p "name".class
p "name".methods
p "name".methods.length
p :name.methods.length
names = {:Esmaeil => :MIRZAEE, :Sam => :RUS}
p names
p "=" * 20

person = {:name => "Esmaeil",
          :gender => "Male",
          :handsome => true,
          :language => ["Ruby", "Go", "Swift", "JavaScript", "Java"]}
p person[:name]


another_person = {name: "Samuel",
                  gender: "Male",
                  handsome: true,
                  language: %w[Ruby Go Swift JavaScript Java]}
p another_person[:language]

p :age.to_s
p :age.to_s.class
p "age".to_sym
p "age".to_sym.class
p "School Bus".to_sym
p "=" * 20

menu = {burger: 3.99, taco: 5.96, chips: 0.5}
p menu[:burger]
p menu[:chips]
p menu[:salad]
p menu.fetch(:burger)
p menu.fetch(:salad, "Not defined")
menu.store(:sushi, 24.99)
menu.store(:steak, 34.99)
p menu
p "=" * 20

shopping_list = {banana: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shopping_list = {}
p shopping_list.length
p vegan_shopping_list.length
p shopping_list.empty?
p vegan_shopping_list.empty?
p "=" * 20

capitals = {alabama: "Montgomery",
            alaska: "Juneau",
            arizona: "Phoenix",
            arkansas: "Little Rock"}

capitals.each do |state, capital|
  puts "Querying hash..."
  puts  "The capital of #{state} is #{capital}!"
end

capitals.each do |pair|
  p pair
end

capitals.each do |pair|
  p pair[0]
end
p "=" * 20

salaries = {director: 100_000,
            producer: 200_000,
            ceo: 3_000_000}

salaries.each_key do |position|
  puts "EMPLOYEE RECORD..."
  puts "#{position}"
end

salaries.each_value { |salary| puts "The next value is #{salary}."}

def get_keys_from_hash(hash)
  keys = []
  hash.each do |key, value|
    keys << key.upcase
  end
  keys
end

p get_keys_from_hash(salaries)
p "=" * 20

shopping_list = {banana: 5, oranges: 10,
                 carrots: 3, crackers: 5}
p shopping_list.keys
p shopping_list.values
p "=" * 20

fruit_prices = {banana: 1.05}
p fruit_prices[:carrots]

fruit_prices = Hash.new("Unknown")
p fruit_prices
fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:kiwi] = 10.99

p fruit_prices[:steak]
p fruit_prices[:celery]
p fruit_prices[:mushrooms]

puts

fruit_prices.default = "Whoops! That does not exist."
p fruit_prices[:steak]
p fruit_prices[:banana]

puts

fruit_prices.default = -1
p fruit_prices[:steak]
p fruit_prices[:banana]
p "=" * 20

spice_girls = {scary: "Melanie Brown",
               sporty: "Melanie Chisholm",
               baby: "Emma Bunton",
               ginger: "Geri  Halliwell",
               posh: "Victoria Beckham"}

p spice_girls.to_a
p spice_girls.to_a.flatten

power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:blue, "Billy"],
  [:yellow, "Trini"],
  [:pink, "Kimberly"]
]
puts power_rangers.to_h
p "=" * 20

pokemon = {squirtle: "Water",
           bulbasaur: "Grass",
           charizard: "Fire"}
p pokemon.sort
p pokemon.sort.reverse
p pokemon.sort_by { |pokemon, type| pokemon }
p pokemon.sort_by { |pokemon, type| pokemon }.reverse

p pokemon.sort_by { |pokemon, type| type }
p pokemon.sort_by { |pokemon, type| type }.reverse
p "=" * 20

cars = {toyota: "camry",
        chevrolet: "aveo",
        ford: "F-150",
        kia: "soul"}
puts cars.key?(:chevrolet)
puts cars.key?("chevrolet")
puts cars.key?(25)
puts cars.has_key?(:chevrolet)
puts
puts cars.value?("aveo")
puts cars.value?(:aveo)
puts cars.value?(25)
puts cars.has_value?("aveo")
p "=" * 20

def calculate_total_one(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calculate_total_one(24.99, 0.18, 0.07)
puts calculate_total_one(0.18, 0.07, 24.99)

def calculate_total_two(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

bill = {price: 24.99, tip: 0.18, tax: 0.07}
p calculate_total_two(bill)
bill = {tax: 0.07, price: 24.99, tip: 0.18}
p calculate_total_two(bill)
p calculate_total_two({tax: 0.07, price: 24.99, tip: 0.18})
p calculate_total_two(tax: 0.07, price: 24.99, tip: 0.18)
p calculate_total_two tax: 0.07, price: 24.99, tip: 0.18
p "=" * 20

superheroes = {spiderman: "Peter Parker",
               superman: "Clark Keson",
               batman: "Bruce Wayne"}
p superheroes
removed = superheroes.delete(:spiderman)
p superheroes
p removed
p "=" * 20

recipe = {sugar: 5,
          flour: 10,
          salt: 2,
          pepper: 4}
high = recipe.select { |ingredient, teaspoon| teaspoon >= 5 }
puts high

low = recipe.reject { |ingredient, teaspoon| teaspoon >= 5 }
puts low

includes_s = recipe.select { |ingredient, teaspoon|
  ingredient.to_s.include?('s') }
puts includes_s
p "=" * 20

market = {garlic: "3 cloves",
          tomatoes: "5 batches",
          milk: "10 gallons"}
kitchen = {bread: "2 loaves",
           yogurt: "20 cans",
           milk: "100 gallons"}
p market.merge(kitchen)
p kitchen.merge(market)
def custom_merge(hash1, hash2)

end
p "=" * 20


p "=" * 20
p "=" * 20
