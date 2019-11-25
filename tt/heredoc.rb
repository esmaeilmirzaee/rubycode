class Poem
  def initialize
    @text = <<END
          "Faith" is a fine invention
          When gentlemen can see
          But Microscopes are prudent
              In an emergecy.
          (Emily Dickinson 1830-1886)
END
  end
  def recite
    puts @text
  end
end

Poem.new
