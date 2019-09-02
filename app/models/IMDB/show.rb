class Show
    
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def create_character(name)
        CharShow.new(name, self)
    end

    def add_character(name, actor)
        if character_check?(name)
            "This character already exists in this show!"
        else
            existing_character = Character.find_by_name(name)
            if existing_character
                create_character(existing_character)
            else
                new_char = Character.new(name, actor)
                create_character(new_char)
            end
            "#{name} has been added to #{self.title} series."
        end
        
    end

    def charshows
        CharShow.all.select {|cs| cs.show == self}
    end

    def characters
        charshows.map {|cs| cs.character}
    end

    def character_names
        characters.map {|character| character.name}
    end

    def character_check?(name)
        character_names.include?(name)
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.title == self.title}
    end

    def self.all
        @@all
    end
end