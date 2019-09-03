class Movie #DONE

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    #view all char_movies for this movie
    def char_movie
        Char_Movie.all.select{ |char_movie| char_movie.movie == self }
    end

    #view all character instances for this movie
    def characters
       self.char_movie.collect{ |char_movie| char_movie.character }
    end

    #view all actors in this movie
    def actors
        self.characters.collect{ |character| character.actor }
    end

    #add a character to a movie given the character object
    def add_character(character) #movie.add_character(character)
        if char = self.char_movie.find{ |char_movie| char_movie.character == character }
            return "This character is already in the movie!"
        else
            char = Char_Movie.new(character, self)
        end
        char
    end

    #cast an actor, given actor object and character object
    def cast_actor(actor, character) #movie.cast_actor(actor, character)
        if character.actor == "" || nil
            character.actor = actor
        else
            return "This character has already been cast!"
        end
    end

    # should return the movie which has the most actors in it
    def self.most_actors #Movie.most_actors
        @@all.max_by { |movie| movie.actors.length }
    end

end