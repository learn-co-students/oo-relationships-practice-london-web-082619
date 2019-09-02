class Actor
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return the characters the actor has played
    def characters()
        Character.all().select() { | char | char.actor == self }
    end

    #Assign a character to the actor
    def play_character(character)
        character.actor = self
    end


    ###### Class methods ######

    #Return an array of all actors
    def self.all()
        @@all
    end

    #Return the actor who has played the most characters
    def self.most_characters()
        self.all().max_by() { | actor | actor.characters().length() }
    end

end