class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age, occupation, hobby, birthplace)
    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace    
  end  
end

senator = Candidate.new("Mr Smith", 53, "Fishing", "Banker", "Kansas")
p senator.occupation
p senator.hobby
p senator.name

class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end

info = {hobby: "Fishing", birthplace: "Kentucky", age: 53}
senator = Candidate.new("Mr Smith", info)
p senator.occupation
p senator.hobby
p senator.name
