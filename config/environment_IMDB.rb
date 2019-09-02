require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

rupert = Actor.new("Rupert Grint")
tom = Actor.new("Tom Felton")
neville = Actor.new("Neville Longbottom")

hp1 = Movie.new("Harry Potter 1")
hp2 = Movie.new("Harry Potter 2")
ghost = Movie.new("Ghost")



ron = hp1.add_character("Ron Weasly")
malfoy = hp1.add_character("Draco Malfoy")

ron2 = hp2.add_character("Ron Weasly")
malfoy2 = hp2.add_character("Draco Malfoy")

hp1.cast_actor(rupert, ron)
hp1.cast_actor(tom, malfoy)

hp2.cast_actor(rupert, ron)
hp2.cast_actor(tom, malfoy)

ghost.cast_actor(tom, main_character)

#EPISODE/SHOW DATA


jenn = Actor.new("Jennifer Aniston")
david = Actor.new("David Schwimmer")

friends = Show.new("Friends")

episode1 = friends.create_episode("The one where they learn to code")
episode2 = friends.create_episode("THe one where they fuck up their code")

rachel = friends.add_character("Rachel Green")
ross = friends.add_character("Ross Geller")


binding.pry
'save'