class Spaceship
  def debug_only
    return nil unless @debug_only
    return nil unless block_given
    puts "Running debug code..."
    yield @debug_attrs
  end
end

ship = Spaceship.new
ship.debug_only do |attrs|
  puts "Debug attr values: #{attrs.inspect}"
end
