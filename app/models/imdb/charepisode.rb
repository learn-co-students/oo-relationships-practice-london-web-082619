class CharEpisode
    attr_reader :character, :episode

    @@all = []

    def initialize(character, episode)
        @character = character
        @episode = episode
        @@all << self
    end

    def self.all()
        @@all
    end

end