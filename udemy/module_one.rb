require 'date'

module Employee
  attr_accessor :start_date

  def employment_length
    days = Date.today - start_date.to_date
    "#{days.to_i} days"
  end
end

class User
  include Employee
end
