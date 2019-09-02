class Character #DONE

    attr_accessor :name, :actor
    @@all = []

    def initialize(name) #Character.new(name, actor, char_movie)
        @name = name
        @actor = ""
        @@all << self 
    end

    def self.all
        @@all
    end

    def occurences #character.occurences
        #return all movies and/or TV shows that this character appears in
        occurences = []
        occurences << Movie.all.select{ |movie| movie.characters.include? self }
        occurences << Show.all.select{ |show| show.characters.include? self }
        occurences
    end

    # should return which character of film/television appears in the most films or tv shows
    def self.most_appearances #Character.most_appearances
        @@all.max_by { |character| character.occurences }
    end

end