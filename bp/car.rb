class Car
  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1_000
    miles_deduction = (miles / 10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    value > car.value ? "Your car is better!" : "You car is worst!"
  end

  protected
  def value
    @value
  end
end

civic = Car.new(3, 30_000)
# p civic.value

fiat = Car.new(1, 20_000)
p civic.compare_car_with(fiat)
p fiat.compare_car_with(civic)
