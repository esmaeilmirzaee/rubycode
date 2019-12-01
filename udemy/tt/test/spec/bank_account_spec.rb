#!/bin/ruby env

require 'minitest/autorun'
require 'minitest/spec'

$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'lib/bank_account'

describe BankAccount do
  subject { BankAccount.new("Esmaeil") }

  it "should be a bank account instance" do
    subject.must_be_instance_of BankAccount
  end

  it "shoube have a name" do
    subject.must_respond_to 'name'
  end

  it "should initialise with a name" do
    bank_account = BankAccount.new("Esmaeil")
    bank_account.name.must_equal "Esmaeil"
  end

  it "should have transactions" do
    subject.must_respond_to 'transactions'
  end

  it "it should be instance of an array" do
    subject.transactions.must_be_instance_of Array
    subject.transactions.must_equal []
    subject.transactions.must_be_empty
    # subject.transactions.must_be_nil
  end

  describe "#deposit" do
    before do
      @bank_account = BankAccount.new("Esmaeil")
    end

    it "responds to the deposit method" do
      @bank_account.must_respond_to 'deposit'
    end

    it "returns the amount of the deposit" do
      @bank_account.deposit(100).must_equal 100
    end

    it "adds the amount to the transactions" do
      @bank_account.deposit(100)
      @bank_account.transactions.must_include 100
    end

    it "responds to withdraw method" do
      @bank_account.must_respond_to 'withdraw'
    end

    it "returns the transactions list" do
      @bank_account.withdraw(100).must_equal @bank_account.transactions
    end

    it "adds the amount to the transactions" do
      @bank_account.withdraw(100)
      @bank_account.transactions.must_include -100
    end
  end
end
