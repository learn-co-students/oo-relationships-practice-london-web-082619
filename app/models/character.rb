class Character

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

    # should return which character of film/television appears in the most films or tv shows
    def self.most_appearances

    end

end