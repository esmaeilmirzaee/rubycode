# TODO: NOT WORKING

factorial = Proc.new do |num|
  if num == 1
    num
  else
    factorial.(num-1)
  end
end

p factorial.(5)
