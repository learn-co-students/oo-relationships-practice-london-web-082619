class Movie

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    #add a character to a movie given the character name
    def add_character(name) #movie.add_character(name, actor)
        if self.characters.find{ |character| character.name == name } #if the character is already in the movie...
            return "This character has already been added to this movie!" #return a message notifying the user of this
        elsif character = Character.all.find{ |character| character.name == name } #if character already exists...
            Char_Movie.new(character, self) #create new char_movie with the found instance of character
        else  #if character doesn't exist... 
            character = Character.new(name) #create new character
            Char_Movie.new(character, self) #create new char_movie instance with newly created character and movie(self)
        end
        character
    end

    #view all char_movies for this movie
    def char_movie
        Char_Movie.all.select{ |char_movie| char_movie.movie == self }
    end

    #view all character instances for this movie
    def characters
       self.char_movie.collect{ |char_movie| char_movie.character }
    end

    #cast an actor, given actor object and character object
    def cast_actor(actor, character) #movie.cast_actor(actor, character)
        if character.actor == "" || nil
            character.actor = actor
        else
            return "This character has already been cast!"
        end
    end

    #view all actors in this movie
    def actors
        self.characters.collect{ |character| character.actor }
    end

    # should return the movie which has the most actors in it
    def self.most_actors #Movie.most_actors
        @@all.max_by { |movie| movie.actors.length }
    end

end