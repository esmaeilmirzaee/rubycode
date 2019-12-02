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

p story(-5, 7)
p story[-1]

p story[23..34]
