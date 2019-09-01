class Character

    attr_accessor :name, :actor, :movie
    @@all = []

    def initialize(name, actor, movie) #Character.new(name, actor, movie)
        @name = name
        @actor = actor
        @movie = movie
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.most_appearances
    # should return which character of film/television appears in the most films or tv shows
    end

end