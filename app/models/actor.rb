class Actor 

    attr_accessor :name
    @@all = []
    
    def initialize(name) #Actor.new(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #return all characters this actor plays
    def characters
        Character.all.select{ |character| character.actor == self }
    end

    #return all movies which this actor appears in 
    def movies
        char_movies = Char_Movie.all.select{ |char_movie| char_movie.character.actor == self}
        char_movies.collect{ |char_movie| char_movie.movie }
    end

    #should return which actor has the most different characters played
    def self.most_characters
        @@all.max_by { |actor| actor.characters.length }
    end

end