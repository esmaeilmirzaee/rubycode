class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end
end

bob = Player.new
boris = Player.new

p bob.play_game
p boris.play_game


def boris.cheat
  "Winner"
end

def boris.play_game
  "Winner"
end

p boris.play_game
p boris.cheat

p bob.singleton_methods
p boris.singleton_methods

p boris.singleton_class
p bob.singleton_class
