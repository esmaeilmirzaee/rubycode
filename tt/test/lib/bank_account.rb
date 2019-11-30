# lib/bank_account.rb

class BankAccount
  attr_reader :name, :transactions

  def initialize(name)
    @name = name
    @transactions = []
  end

  def deposit(amount)
  @transactions << amount
  amount
  end

  def withdraw(amount)
    @transactions << -amount
  end
end
