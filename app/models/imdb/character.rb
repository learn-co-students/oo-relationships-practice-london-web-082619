class Character
    attr_accessor :name, :actor

    @@all = []

    ###### Instance methods ######
    def initialize(name)
        @name = name

        @@all << self
    end

    #Return the shows the character appears in
    def shows()
        Show.all().select() { | show | show.characters().include?(self) }
    end

    #Return the movies the character appears in
    def movies()
        Movie.all().select() { | movie | movie.characters().include?(self) }
    end

    ###### Class methods ######

    #Return an array of all characters
    def self.all()
        @@all
    end

    #Return the character appears in the most films and TV shows
    def self.most_appearances()
        self.all().max_by() { | char | char.shows().length() + char.movies.length() }
    end



end