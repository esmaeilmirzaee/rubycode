class BankAccount
  def initialize(name)
    @name = name
    @transaction = []
  end

  def deposit(amount)
    @transactions.push amount
  end

  def withdraw(amount)
    @transactions.push(-amount)
  end
end
