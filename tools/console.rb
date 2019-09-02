require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor1 = Actor.new("actor1")
actor2 = Actor.new("actor2")
actor3 = Actor.new("actor3")

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")
movie3 = Movie.new("movie3")

show1 = Show.new("show1")
show2 = Show.new("show2")
show3 = Show.new("show3")

character1 = Character.new("character1")
character2 = Character.new("character2")
character3 = Character.new("character3")

episode1 = Episode.new("episode1", show1)
episode2 = Episode.new("episode2", show1)
episode3 = Episode.new("episode3", show1)

episode1.add_character(character1)
movie1.add_character(character1)

episode2.add_character(character2)


movie4 = Movie.new("show1")
movie5 = Movie.new("show2")

binding.pry
0