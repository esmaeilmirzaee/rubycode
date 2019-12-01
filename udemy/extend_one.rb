require 'date'

module Employee
  attr_accessor :start_date
end

class User
end

user = User.new
user.extend(Employee)
user.start_date = Date.today

## Checking where the extension object is
User.public_instance_methods.grep(/start_date/)

another_user = User.new
another_user.methods.grep(/start_date/)
user.methods.grep(/start_date/)
user.singleton_class.public_instance_methods.grep(/start_date/)
