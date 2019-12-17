# frozen_string_literal: false
require 'Time'

class Gadget
  # attr_writer :password
  attr_reader :production_number
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    # @production_number = "#{('a'..'z').to_a.sample}-#{rand(1...1000)}"
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from
    the #{self.class} class and it has the ID #{self.object_id}."
  end

  def password=(password)
    @password = password if validate_password(password)
  end

  private
  def generate_production_number
    start_digits = rand(10_000..99_999)
    end_digits = rand(10_000..99_999)
    alphabet = ("A".."z").to_a
    alphabet = alphabet.join
    alphabet = alphabet.scan(/[a-zA-Z]/)
    alphabet = alphabet.to_a
    middle_digits = Time.new.year.to_s
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(password)
    password.is_a?(String) && password.length > 8 &&  password =~ /\d/
  end
end

gadget = Gadget.new('Esmaeil', 'MIRZAEE')
p gadget.production_number

phone = Gadget.new("Esmaeil", "programming")
puts phone.password
phone.password=("123456978")
p phone.password
phone.password = "passsss123"
p phone.password
