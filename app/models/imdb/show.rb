class Show
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return an array of all characters in the show
    def characters()
        Character.all().select() { | char | char.shows.include?(self) }
    end

    #Return an array of movies that share the same name as this show
    def on_the_big_screen()
        Movie.all().select() { | movie | movie.name == self.name }
    end


    ###### Class methods ######
    
    #Return an array of all shows
    def self.all()
        @@all
    end

end