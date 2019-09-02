class Movie

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def charmovs
        CharMov.all.select { | charmov | charmov.movie == self }
    end

    def characters
        charmovs.map { | charmov | charmov.character }
    end

    def character_name 
        characters.map { | character | character.name }
    end

    #.uniq because an actor can play multiple characters in one movie e.g. Jet Li in The One
    def actors 
        characters.map { | characters | characters.actor}.uniq
    end

    def num_actors
        actors.length
    end

    def character_in_movie?(character_name, actor)
        characters.find { | character | character.name == character_name && character.actor == actor}
    end

    def add_character(character_name, actor)
        if self.character_in_movie?(character_name, actor)
            "That character is already in the movie you forgetful eeejit!"
        else
            existing_character = Character.find_character_by_name(character_name)
            if existing_character
                CharMov.new(self, existing_character)
            else
                new_character = Character.new(character_name, actor)
                CharMov.new(self, new_character)
            end
        end
    end

    #class methods
    def self.all
        @@all
    end

    def self.most_actors
        @@all.max_by { | movie | movie.num_actors }
    end

    def self.find_movie_by_title(title)
        @@all.select { | movie | movie.title == title }
    end




end