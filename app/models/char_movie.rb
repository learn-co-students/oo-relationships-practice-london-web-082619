class Char_Movie #DONE

    attr_accessor :character, :movie
    @@all = []

    def initialize(character, movie) #Char_Movie.new(character, movie)
        @character = character
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end

end