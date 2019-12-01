#!/usr/bin/env ruby

require 'time'
require 'date'

date = Date.today
p date
puts date.to_s
puts Date.new(2012, 4, 1)
puts Date.today.strftime("%m%d%Y")
puts date.strftime("%m%d%y")
puts Date.today.strftime("%M%d%Y")
puts Date.today.strftime("%b %d, %y")
puts Date.today.strftime("%B %d, %y")
puts Date.today.mday
date = Date.new
puts Date.new - date
puts Time.now
time = Time.now
puts (Time.now - time).to_s
