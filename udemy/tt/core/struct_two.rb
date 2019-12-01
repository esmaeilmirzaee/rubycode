#!/usr/bin/env ruby

Island = Struct.new(:name, :location) do
  def to_s
    "<#{name}, #{location}>"
  end

  def travel
    "Going to #{location}..."
  end
end

treehouse = Island.new("Teehouse", "Undisclosed")
puts treehouse
puts treehouse.travel
