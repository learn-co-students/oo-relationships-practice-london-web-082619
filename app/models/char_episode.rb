class Char_Episode

    attr_accessor :character, :episode
    @@all = []

    def initialize(character, episode) #Char_Episode.new(character, episode)
        @character = character
        @episode = episode
        @@all << self
    end

    def self.all
        @@all
    end

end