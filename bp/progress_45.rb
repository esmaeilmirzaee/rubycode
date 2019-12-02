story = "Once upon a time in a land far, far away"

p story.length
p story[3]
p story[0]
p story[4]

p story.slice(10)

p story[5, 4]
p story.slice(5, 4)

p story[0, 10]
p story.slice(0, 10)

another_story = story
p another_story
p another_story.object_id
p story
p story.object_id
story = "I have changed the story."
p another_story
p story
p story.object_id

story = "Once upon a time in land far, far away..."
p story[-5, 7]
p story[-1]

p story[23..34]
p story [0...23]

p story.slice(0...23)
p story.slice(23..34)

thing = "rocket ship"
p thing

thing[-2] = 'o'
p thing

thing[-1] = 'ot'
p thing

thing[-5..-4] = 'f'
p thing

p "Hello World".capitalize
p "hello World".capitalize.class

p 'hello'.upcase
p 'HELLO'.downcase

p "EsMaEiL".swapcase
p "Test".reverse

p 'test'[0].upcase
p 'test'[-1].upcase.class

p word = %w(word)
p word.class

word = 'word'
p word
word.capitalize!
p word

name = "Snow White"
p name.downcase.include?("h")

p name.nil?
