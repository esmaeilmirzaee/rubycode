#!/usr/bin/env ruby

require 'logger'

class BankAccount
  attr_reader :logger

  def initialize(name)
    @name = name
    @transactions = []
    @logger = Logger.new(STDOUT)
  end

  def deposit(amount)
    @logger.debug "Depositing #{amount}"
    @transactions << amount
  end

  def withdraw(amount)
    @logger.debug "Withdrawing #{amount}"
    @transactions << -amount
  end
end

account = BankAccount.new("Esmaeil MIRZAEE")
account.deposit(100)
account.withdraw(10)
