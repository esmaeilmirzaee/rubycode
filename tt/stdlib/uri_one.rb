#!/usr/bin/env ruby

require 'uri'
url = URI.parse('https://teamtreehouse.com')

puts url.hostname
puts url.path
puts URI.split('https://teamtreehouse.com').inspect

# TODO
google = open('http://google.com').read
puts google
