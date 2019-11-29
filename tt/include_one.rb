#!/usr/bin/env ruby

module SayHello
  def say_hello
    puts "Hello #{@name}"
  end
  end

class Hello
  include SayHello

  def initialize(name)
    @name = name
  end
end

hello = Hello.new("Esmaeil")
hello.say_hello
