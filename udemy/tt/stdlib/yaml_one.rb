#!/usr/bin/env ruby

require 'yaml'
arr = %w(dog cat frog)
puts arr.to_yaml

hash = {:name => "Treehouse", :locaion => "Treehouse Island"}
puts hash.to_yaml

hash[:employees] = ["Esmaeil MIRZAEE", "Mike The Frog", "Jason Seifer"]
puts hash.to_yaml

File.open("./config,yml", "w") do |config|
  config.puts hash.to_yaml
end

config = YAML.load(File.read('./config.yml', 'r'))
puts config.inspect
