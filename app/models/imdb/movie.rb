class Movie
    attr_reader :title

    @@all = []

    ####### Instance methods ######

    def initialize(title)
        @title = title
        @@all << self
    end

    #Return an array of all characters in the movie
    def characters()
        charmovies = CharMovie.all().select() { | cm | cm.movie == self }
        charmovies.map() { | cm | cm.character() }
    end

    #Return an array of all actors in the movie
    def actors()
        self.characters().map() { | char | char.actor() }
    end


    #Add a character to the movie
    def add_character(character)
        if !self.characters().include?(character)
            CharMovie.new(character, self)
        else
            "#{character.name} is already in #{self.title}"
        end
    end

    #Create a new character
    def add_character_by_name(name)
        existing_character = Character.all().find() { | char | char.name == name }

        if existing_character
            self.add_character(existing_character)
        else
            self.add_character(Character.new(name))
        end 
    end

    #Assign an actor to a character
    def cast(character, actor)
        if self.characters().include?(character)
            character.actor = actor
        else
            "#{character.name} isn't in #{self.title}!"
        end
    end
    

    ###### Class methods ######

    #Return an array of all movies
    def self.all()
        @@all
    end

    #Return the movie with the most actors
    def self.most_actors()
        self.all().max_by() { | movie | movie.actors().length() }
    end
end