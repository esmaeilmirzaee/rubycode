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
p "=" * 20
p "=" * 20
