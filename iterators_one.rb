teams = {
  "Houston Astros" => {
    "first base" => "Chris Catrer",
    "second base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
  "Texas Rangers" => {
    "first base" => "Prince Fielder",
    "second base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}

teams.each do |team, players|
  puts team
  players.each do |position, player|
    p "#{player} starts at #{position}"
  end
end
