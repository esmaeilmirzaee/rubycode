class RubyTest
  @@var = 100 # 1600
  @var = "abc"

  def m
    puts @@var
    puts @var
  end

  def RubyTest.m
    puts @@var
    puts @var
  end

  def initialize(value)
    @@var += value
    @var = value 
  end
end

ruby_test_one = RubyTest.new(500)
ruby_test_two = RubyTest.new(1000)

RubyTest.m
