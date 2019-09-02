class Episode
    attr_reader :title, :show

    @@all = []

    ###### Instance methods ######

    def initialize(title, show)
        @title = title
        @show = show

        @@all << self
    end

    #Return an array of all characters in the episode
    def characters()
        charepisodes = CharEpisode.all().select() { | ce | ce.episode == self }
        charepisodes.map() { | ce | ce.character() }
    end

    #Return an array of all actors in the episode
    def actors()
        self.characters().map() { | char | char.actor }
    end

    #Add a character to the episode
    def add_character(character)
        if !self.characters().include?(character)
            CharEpisode.new(character, self)
        else
            "#{character.name} is already in #{self.title}"
        end
    end

    #Add a character to the episode by name
    def add_character_by_name(name)
        existing_character = Character.all().find() { | char | char.name == name }

        if existing_character
            self.add_character(existing_character)
        else
            self.add_character(Character.new(name))
        end
    end

    #Cast a character
    def cast(character, actor)
        if self.characters().include?(character)
            character.actor = actor
        else
            "#{character.name} isn't in #{self.title}!"
        end
    end




    ###### Class methods ######

    #Return an array of all episode - works!
    def self.all()
        @@all
    end
end
