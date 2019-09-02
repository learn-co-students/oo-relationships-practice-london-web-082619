require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA

hermione = Character.new("Hermione Granger")
ron = Character.new("Ron Weasly")
neville = Character.new("Neville Longbottom")
sirius = Character.new("Sirius Black")
mcgonagall = Character.new("Professor McGonagall")

violet = Character.new("Violet Crawley, Dowager Countess of Grantham")

emma = Actor.new("Emma Watson")
rupert = Actor.new("Rupert Grint")
matthew = Actor.new("Matthew Lewis")
gary = Actor.new("Gary Oldman")
maggie = Actor.new("Maggie Smith")

hp1 = Movie.new("Harry Potter and the Philosopher's Stone")
hp2 = Movie.new("Harry Potter and the Chamber of Secrets")
hp3 = Movie.new("Harry Potter and the Prizoner of Azkaban")
downtonmovie = Movie.new("Downton Abbey")

downton = Show.new("Downton Abbey")
ep1 = downton.create_episode("Pilot")
ep2 = downton.create_episode("The Seond One")

hp1.add_character(hermione)
hp1.add_character(ron)
hp1.add_character(neville)
hp1.add_character(sirius)
hp1.add_character(mcgonagall)

hp2.add_character(hermione)
hp2.add_character(ron)
hp2.add_character(neville)

hp3.add_character(hermione)

hp1.cast_actor(emma, hermione)
hp1.cast_actor(rupert, ron)
hp1.cast_actor(matthew, neville)
hp1.cast_actor(gary, sirius)
hp1.cast_actor(maggie, mcgonagall)

ep1.add_character(violet)
ep2.add_character(violet)

downton.cast_actor(maggie, violet)

#EPISODE/SHOW DATA


# jenn = Actor.new("Jennifer Aniston")
# david = Actor.new("David Schwimmer")

# friends = Show.new("Friends")

# episode1 = friends.create_episode("The one where they learn to code")
# episode2 = friends.create_episode("THe one where they fuck up their code")

# rachel = friends.add_character("Rachel Green")
# ross = friends.add_character("Ross Geller")


binding.pry
'save'