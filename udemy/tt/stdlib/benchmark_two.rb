#!/usr/bin/env ruby

require 'benchmark'

repetitions = 1_000_000

class BankAccount
  def initialize(name)
    @name = name
    @transactions = []
  end

  def deposit(amount)
    @transactions << amount
  end

  def withdraw(amount)
    @transactions << -amount
  end
end

BankStruct = Struct.new('BankStruct', :name, :transactions)

Benchmark.bm(20) do |x|
  x.report "BankAccount Class" do
    repetitions.times do
      account = BankAccount.new('Esmaeil MIRZAEE')
      account.deposit(100)
      account.withdraw(50)
    end
  end

  x.report "BankAccount Struct" do
    repetitions.times do
      account = BankStruct.new('Esmaeil MIRZAEE', [])
      account.name = "Esmaeil MIRZAEE"
      account.transactions << 100
      account.transactions << -50
    end
  end
end
