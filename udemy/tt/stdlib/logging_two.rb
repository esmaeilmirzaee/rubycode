#!/usr/bin/env ruby

require 'logger'

class BankAccount
  attr_reader :file_logger, :stdout_logger

  def initialize(name)
    @name = name
    @transactions = []
    @stdout_logger = Logger.new(STDOUT)
    @file_logger = Logger.new("./bank_account.log")
  end

  def deposit(amount)
    log "Depositing #{amount}"
    @transactions << amount
  end

  def withdraw(amount)
    log "Withdrawing #{amount}"
    @transactions << -amount
  end

  def log(message, level=Logger::INFO)
    file_logger.add level, message, "#{self.class} (#{@name})"
     stdout_logger.add level, message, "#{self.class} (#{@name})"
  end

end

account = BankAccount.new("Esmaeil MIRZAEE")
account.deposit(100)
account.withdraw(10)
