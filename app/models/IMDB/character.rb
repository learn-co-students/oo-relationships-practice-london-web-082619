class Character
    
    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def charmovs
        CharMov.select {|cm| cm.character == self}
    end

    def charshows
        CharShow.select {|cs| cs.character == self}
    end

    def movies
        charmovs.map {|cm| cm.movie}
    end

    def shows
        charshows.map {|cs| cs.show}
    end

    def num_appearances
        movies.length + shows.length
    end

    def self.most_appearances
        @@all.max_by {|character| character.num_appearances}
    end

    def self.find_by_name(name)
        @@all.find {|character| character.name == name}
    end

    def self.all
        @@all
    end
end