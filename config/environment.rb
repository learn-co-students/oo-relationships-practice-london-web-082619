require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

actor_data = ["Tom Cruise", "Joseph Gordon-Levitt", "Olivia Wilde", "Scarlett Johansson", "George Clooney", "Tom Hanks", "Will Smith", "Ryan Reynolds", "Halle Berry", "Meryl Streep"]
movie_data = ["127 Hours", "I, Robot", "Inception", "Airport", "John Tucker Must Die", "9 to 5"]
character_data_string = "Shae, Charlene, Kandace, Catrina, Alphonse, Setsuko, George, Hye, Norah"             
character_data = character_data_string.split(", ")

actors = actor_data.each { |name| Actor.new(name) }
movies = movie_data.each { |title| Movie.new(title) }

3.times do
    Movie.all.each { |movie| movie.add_character(character_data.sample, actor_data.sample) }
end

binding.pry
'save'