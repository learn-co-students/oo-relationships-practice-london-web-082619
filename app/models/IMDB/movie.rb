class Movie
    
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def create_character(name)
        CharMov.new(name, self)
    end

    def add_character(name, actor)
        if character_check?(name)
            "This character already exists in this movie!"
        else
            existing_character = Character.find_by_name(name)
            if existing_character
                create_character(existing_character)
            else
                new_char = Character.new(name, actor)
                create_character(new_char)
            end
            "#{name} has been added to #{self.title}."
        end
        
    end


    def charmovs
        CharMov.all.select {|cm| cm.movie == self}
    end

    def characters
        charmovs.map {|cm| cm.character}
    end

    def character_names
        characters.map {|characters| characters.name}
    end

    def actors   #.uniq because an actor can play multiple characters in one movie
        characters.map {|character| character.actor}.uniq
    end

    def character_check?(name)
        character_names.include?(name)
    end

    def num_actors
        actors.length
    end


    def self.most_actors
        @@all.max_by {|movie| movie.num_actors}
    end

    def self.all
        @@all
    end
end