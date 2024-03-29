# frozen_string_literal: false
require 'Time'
require_relative 'app_store'

class Gadget
  # attr_writer :password
  attr_reader :production_number, :apps
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    # @production_number = "#{('a'..'z').to_a.sample}-#{rand(1...1000)}"
    @production_number = generate_production_number
    @apps = []
  end

  # What is the benefit of instance methods over instance variables?

  def to_s
    "Gadget #{production_number} has the username #{username}. It is made from
    the #{self.class} class and it has the ID #{object_id}."
    # "Gadget #{self.production_number} has the username #{self.username}. It is
    # made from the #{self.class} class and it has the ID #{self.object_id}."
    # "Gadget #{@production_number} has the username #{@username}. It is made from
    # the #{self.class} class and it has the ID #{self.object_id}."
  end


  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = AppStore.find_app(name)
    apps.delete(app) unless app.nil?
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  def password=(password)
    @password = password if validate_password(password)
  end

  private

  attr_writer :apps

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

g = Gadget.new("boris", "passwods")
g.install_app(:Chat)
g.install_app(:Twitter)
g.install_app(:Twitter)
g.install_app(:vyinv)
p g.apps

g.delete_app(:Chat)
g.delete_app(:News)
p g.apps
