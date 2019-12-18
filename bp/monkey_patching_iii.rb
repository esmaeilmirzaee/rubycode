class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now
puts Time.now + 45.minutes
puts Time.now + 4.hours
puts Time.now + 10.days
