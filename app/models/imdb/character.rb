class Character
    attr_accessor :name, :movies, :shows, :actor

    @@all = []

    ###### Instance methods ######
    def initialize(name, actor, movies=[], shows=[])
        @name = name
        @movies = movies
        @shows = shows
        @actor = actor

        @@all << self
    end


    ###### Class methods ######

    #Return an array of all characters
    def self.all()
        @@all
    end

    #Return the character appears in the most films and TV shows
    def self.most_appearances()
        self.all().max_by() { | char | (char.movies.length() + char.shows.length()) }
    end

end