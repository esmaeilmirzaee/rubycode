#!/usr/bin/env ruby
# minitest spec
require 'minitest/autorun'
require 'minitest/spec'

describe 'MyTests' do
  before do
    puts "Tests started."
  end

  after do
    puts "Tests finished."
  end

  it "adds 2 + 2" do
    (2+2).must_equal 4
  end

  it "must include frog" do
    %w(dog cat tiger lion frog).must_include "frog"
  end

  it "must be a Fixnum" do
    (2+2).must_be_instance_of Fixnum
  end

  it "should raise an error" do
    array = []
    lambda { array.hello }.must_raise NoMethodError
  end
end
