def greet(name, informal: false, shout: false)
  greeting = if informal || shout then "Hi" else "Hello" end
  message = "#{greeting} #{name}"
  if shout
    message.upcase
  else
    message
  end
end

p greet("Esmaeil")
p greet("Esmaeil", informal: true)
p greet("Esmaeil", informal: false)
p greet("Esmaeil", informal: true, shout:true)
p greet("Esmaeil", shout: true, informal: true)
p greet("Esmaeil", shout: true)
