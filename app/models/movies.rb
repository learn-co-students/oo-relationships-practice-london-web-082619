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

    def self.most_actors
        # should return the movie which has the most actors in it. this is so the
        # studio knows never to hire that director again because he/she makes
        # expensive movies
    end

    #add a character to a movie
    def add_character(name, actor) 
        Character.new(name, actor, self) #Character.new(name, actor, movie)
    end

    #view all character instances for this movie
    def characters
        Character.all.select{ |character| character.movie == self }
    end

end