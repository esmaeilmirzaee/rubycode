#!/usr/bin/env ruby

require 'minitest/autorun'

#class MyTest < MiniTest::Unit::TestCase
class MyTest < Minitest::Test
  def test_that_additional_works
    assert_equal 4, 2+2
  end

  def test_that_my_array_has_a_value
    my_array = %w(dog cat frog)
    assert my_array.include?('frog')
  end

  def test_assert_delta
    assert_in_delta 3.14159, 3, 0.02
  end

  def test_assert_data
    assert_in_delta 3.14159, 3, 0.2
  end

  def test_assert_match
    assert_match /world/, 'hello world'
  end

  def test_assert_match
    assert_match /word/, 'hello world'
  end

  def test_nil
    some_variable = nil
    assert_nil some_variable
  end

  def test_nil
    some_variable = 'hello world'
    assert_nil some_variable
  end

  def test_output
    assert_output "hello world", nil do
      print 'hello world'
    end
  end

  def test_output
    assert_output 'hello world', nil do
      puts 'hello world'
    end
  end

  def test_raise
    assert_raises NameError do
      this_variable_doesnt_exist
    end
  end

  def test_raise
    this_variable_doesnt_exist = 'hello world'
    assert_raises NameError do
      this_variable_doesnt_exist
    end
  end
  def test_respond
    assert_respond_to Array.new, 'incclude?'
  end
end
