#!/bin/ruby env

# What is a method?


class MilitaryToRegular
  attr_reader :time
  def initialize(time)
    @time = time
  end

  def change
    puts @time.slice(-1, 3)
    min = @time.slice(2, 4).to_i
    hour = @time.slice(0, 2).to_i
    add = hour < 12 ? "am" : "pm"
    hour = hour < 12? hour : (hour - 12)
    return "#{hour}:#{min} #{add}"
  end
end

military_time = MilitaryToRegular.new("1357")
p military_time.change
