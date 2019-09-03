class Episode

    attr_accessor :title
    attr_reader :show

    @@all = []

    def initialize(title, show) #Episode.new(title, show)
        @title = title
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

    #return all char_episode instances for this episode
    def char_episode
        Char_Episode.all.select{ |char_episode| char_episode.episode == self }
    end

    #return all characters in this episode
    def characters
        self.char_episode.collect{ |char_episode| char_episode.character }
    end

    #return all actors in this episode
    def actors
        self.characters.collect{ |character| character.actor }
    end

    #add a new character to this episode
    def add_character(character) #show.add_character(character)
        if self.characters.include?(character)
            "This character has already been added to this episode!"
        else
            Char_Episode.new(character, self)
        end
    end

end