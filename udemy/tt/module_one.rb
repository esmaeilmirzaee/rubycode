#!/usr/bin/env ruby

module Treehouse
  MASCOT = "Mike The Frog"

  class Frog
    attr_accessor :name
  end
end

p Treehouse.inspect
p Treehouse.class
p Treehouse::MASCOT
mike = Treehouse::Frog.new
mike.name = "Mike The Frog"
p mike.name
p mike.inspect
