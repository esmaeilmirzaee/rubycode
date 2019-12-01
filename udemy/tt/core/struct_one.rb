#!/usr/bin/env ruby

Struct.new("Treehouse", :name, :location)

treehouse = Struct::Treehouse.new
treehouse.name = "Treehouse"
treehouse.location = "Treehouse Island"

puts treehouse.inspect
