#!/usr/bin/env ruby

require 'yaml'
class Frog
  attr_accessor :name
end

# load yaml
frog = Frog.new
frog.name = "Mike The Frog"
yaml = frog.to_yaml

puts yaml

same_frog = YAML::load(yaml)
puts frog
puts same_frog

puts frog.object_id
puts same_frog.object_id
