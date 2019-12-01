class BankAccount

  @@id ||= 0

  def self.create_for(first_name, last_name)
    @accounts ||= []
    @@id += 1
    @accounts << BankAccount.new(first_name, last_name)
#    p_accounts
  end

  def self.find_for(first_name, last_name)
    @account.find { |account| account.full_name == "#{first_name} #{last_name}" }
  end

  def p_accounts
    puts @accounts
  end

  def accounts_list
    @accounts unless @accounts.empty?
  end

  def initialize(first_name, last_name)
    @balance = 0
    @@id
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{last_name}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount unless @balance < amount
  end

  def balance
    "$#{@balance}"
  end

  def reset!
    @balance = 0
  end
  private :reset!

end
