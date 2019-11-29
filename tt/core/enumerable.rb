#!/usr/bin/env ruby

class BankAccount
  attr_reader :transactions
  include Enumerable
  include Comparable

  def <=> (other_account)
    self.balance <=> other_account.balance
  end

  def initialize(name)
    @name = name
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @transactions << amount
  end

  def withdraw(amount)
    @transactions.push(-amount)
    #unless @balance < amount
  end

  def balance
    @transactions.inject(0) { |sum, iterator| sum += iterator }
  end

  def each
    @transactions.each { |transaction| yield transaction }
  end

  def to_s
    "<#{self.class}:name: #{@name}, balance: $#{@balance}>"
  end
end

account_one = BankAccount.new("Esmaeil MIRZAEE")
account_one.deposit(100)
account_one.withdraw(50)
account_one.deposit(500)
account_one.balance
account_one.withdraw(1000)
account_one.balance

account_one.each do |transaction|
  puts transaction
end

account_two = BankAccount.new("Mike The Frog")
account_two.deposit(200)

puts "Is account_one greater than account_two? #{account_one > account_two}"
account_three = Account.new("Nick Pettit")

puts "Is account_three bwteen account 2 and 3? #{account_one.between?(account_two, account_three)}"
