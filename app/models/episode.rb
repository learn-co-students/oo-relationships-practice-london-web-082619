class Episode

    attr_accessor :title
    attr_reader :show

    @@all = []

    def initialize(title, show) #Episode.new(title, show)
        @title = title
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

    #return all char_episode instances for this episode
    def char_episode
        Char_Episode.all.select{ |char_episode| char_episode.episode == self }
    end


    #return all characters in this episode
    def characters
        self.char_episode.collect{ |char_episode| char_episode.character }
    end

    # #add a new character to this episode
    # def add_character(name) #show.add_character(name, actor)
    #     if self.characters.find{ |character| character.name == name } #if the character is already in the episode...
    #         return "This character has already been added to this episode!" #return a message notifying the user of this
    #     elsif character = Character.all.find{ |character| character.name == name } #if character already exists...
    #         Char_Episode.new(character, self) #create new char_episode with the found instance of character
    #     else  #if character doesn't exist... 
    #         character = Character.new(name) #create new character
    #         Char_Episode.new(character, self) #create new char_episode instance with newly created character and show(self)
    #     end
    #     character
    # end

 

    #return all actors in this episode
    def actors
        self.characters.collect{ |character| character.actor }
    end

end