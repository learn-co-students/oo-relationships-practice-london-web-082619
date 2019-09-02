class Show 

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    #given an episode title (string), create a new instance of an episode for this show
    def create_episode(title)
        Episode.new(title, self)
    end

    ##PICK UP HERE
    #add a new character to this episode
    def add_character(name) #show.add_character(name, actor)
        if self.characters.find{ |character| character.name == name } #if the character is already in the episode...
            return "This character has already been added to this episode!" #return a message notifying the user of this
        elsif character = Character.all.find{ |character| character.name == name } #if character already exists...
            Char_Episode.new(character, self) #create new char_episode with the found instance of character
        else  #if character doesn't exist... 
            character = Character.new(name) #create new character
            Char_Episode.new(character, self) #create new char_episode instance with newly created character and show(self)
        end
        character
    end

    def cast_actor(actor, character) #show.cast_actor(actor, character)
        if character.actor == "" || nil
            character.actor = actor
        else
            return "This character has already been cast!"
        end
    end
        
    #return all episodes of this show
    def episodes
        Episode.all.select{ |episode| episode.show == self }
    end

    #return all characters for this show
    def characters
        characters = []
        self.episodes.each do |episode|
            characters << episode.characters
        end
        return characters.flatten.uniq
    end

    #return all actors for this show
    def actors 
        show.characters.collect{ |character| character.actor}
    end

    #should return Movies that share the same name as this Show
    def on_the_big_screen

    end

end