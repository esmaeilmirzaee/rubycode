#!//bin/ruby env

@evens = []
@odds = []

def even_odd_separator(arr)
  arr.each do |num|
    if num.even?
      @evens.push(num)
    elsif num.odd?
      @odds.push(num)
    end
  end
end

arr = Array.new
100.times { arr.push(rand(1000))}

even_odd_separator(arr)

p @odds
p @evens
