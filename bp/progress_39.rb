#!/bin/ruby env

# This is how to create multi-line string in Ruby

words = <<MLS
    This will be a multi-line string
    when it is output

The tabs will also be preserved/
Just you watch.
Goodbye :)                               
MLS

puts words

words = <<-MLS
   This was defined in the previous lines 
   but know it has changed.

so as you can see multi-line strings
work fine

MLS

p words
