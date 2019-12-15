requrie 'active_support'

module EmacsColour
  class RubyExample
    CONSTANT = /^[0-9]+ regex awesome$/
    attr_reader :colour_scheme

    # TODO: bacon ipsum colour
    def initialize(attributes = {})
      @colour_scheme = attributes[:colour_scheme]
    end

    def self.examples
      # Bacon ipsim colour
      ['string', :symbol, true, false, nil, 99.1, 1..2].each do |value|
        puts "It appears that #{value.inspect} is a #{value.class}."
      end
      {:key => :value1, key2: "value2"}.each do |key, value|
        puts "the #{key.inspect} has a value of #{value.inspect}"
      end
    end
    %w[ONE TWO THREE].each { |number| puts number }
  end
end
