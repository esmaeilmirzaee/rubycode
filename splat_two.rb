def roster **players_with_position
  players_with_position.each do |key, value|
    puts "Player: #{key}"
    puts "Position: #{value}\n"
  end
end

data = {
  "Alutve": "2nd Base",
        "Alex Bregman": "3rd Base",
        "Evan Gattis": "Catcher",
        "George Springer": "OF"
}

roster data
