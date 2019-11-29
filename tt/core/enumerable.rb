#!/usr/bin/env ruby

class BankAccount
  attr_reader :transactions
  include Enumerable

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
    @transactions.push(-amount) unless @balance < amount
  end

  def balance
    @transactions.inject(0) { |item, iteerator| sum += iterator }
  end

  def each
    @transactions.each { |transaction| yield transaction }
  end
end
