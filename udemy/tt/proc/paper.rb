class Paper
  def initialize(&block)
    yield self if block_given?
  end

  def set_variable
    return Proc.new do |kind, value|
      [kind, value].join(": ")
    end
  end

  def title(value)
    @title = set_variable.call "TITLE", value
  end

  def heading(value)
    @heading = set_variable.call "HEADING", value
  end

  def body(value)
    @body = set_variable.call "BODY", value
  end

  def display
    puts @title
    puts "*" * 10
    puts @heading
    puts "*" * 10
    puts @body
    puts "*" * 10
  end
end

paper = Paper.new do |p|
  p.title "My Paper"
  p.heading "This is a paper"
  p.body "This papre is unrelated to Ruby lang, however it's been writtern to teach Ruby programming language."
end

paper.display
