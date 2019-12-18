# frozen_literal_string: false
class Fixnu
  def times
    i = 1
    until i > self
      yield(i)
      i += 1
    end
  end
end

5.times { |i| puts i}
