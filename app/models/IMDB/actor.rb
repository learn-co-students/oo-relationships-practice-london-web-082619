class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def characters
        Character.all.select { | character | character.actor == self}
    end

    def num_characters
        characters.length
    end

#class methods

    def self.all
        @@all
    end

    def self.most_characters
        @@all.max_by { | actor | actor.num_characters }
    end
    
end
