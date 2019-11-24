i = 0
while i<=10
  if i%2==0
    p i
  end
  i += 1
end

(0..10).to_a.select do |n|
  p n.even?
end

(0..10).to_a.select { |n| p n.even? }

p (0..10).to_a.select(&:even?)
