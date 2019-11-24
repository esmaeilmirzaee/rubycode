class Spaceship
  private
  def batten_hatches
    puts 'Batten the hatches!'
  end
end

ship = Spaceship.new


class Spaceship
  private
  def batten_hatches
    puts 'Avast!'
  end
end

#ship.batten_hatches

# Monkey Patching
class String
  # add a space after each character
  def space_out
    chars.join(" ")
  end

  def size
    "Won't tell you!"
  end
end

puts "firefly".space_out
puts "abc".size
