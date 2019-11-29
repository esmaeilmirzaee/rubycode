#!/usr/bin/env ruby

class Hello
  def initialize(name)
    @name = name
  end
end

module SayHello
  def say_hello
    puts "Hello #{@name}"
  end
end

hello = Hello.new("Esmaeil")
hello.extend SayHello
hello.say_hello
str = "The quick brown fox jumped over absolutely nothings."
