class Show

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select { | movie | movie.title == self.title }
    end

    def charshows
        CharShow.all.select { | charshow | charshow.show == self}
    end

    def characters
        charshows.map { | charshow | charshow.character }
    end

    def character_name 
        characters.map { | character | character.name }
    end

    def character_in_show?(character_name, actor)
        characters.find { | character | character.name == character_name && character.actor == actor}
        
    end

    def character_in_movie?(character_name, actor)
        characters.find { | character | character.name == character_name && character.actor == actor}
    end

    def add_character(character_name, actor)
        if self.character_in_show?(character_name, actor)
            "That character is already in this show you forgetful eeejit!"
        else
            existing_character = Character.find_character_by_name(character_name)
            if existing_character
                CharShow.new(self, existing_character)
            else
                new_character = Character.new(character_name, actor)
                CharShow.new(self, new_character)
            end
        end
    end

end