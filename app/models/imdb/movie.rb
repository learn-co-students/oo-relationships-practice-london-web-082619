class Movie
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return an array of all characters in the movie
    def characters()
        Character.all().select() { | char | char.movies.include?(self) }
    end


    ###### Class methods ######

    #Return an array of all movies
    def self.all()
        @@all
    end

    #Return the move with the most actors in it
    #In this model, characters only have 1 actor, so char count is the same
    def self.most_actors()
        self.all().max_by() { | movie | movie.characters().length() }
    end

end