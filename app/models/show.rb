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
        self.characters.collect{ |character| character.actor}
    end

    #should return Movies that share the same name as this Show
    def on_the_big_screen
        Movie.all.select{ |movie| movie.title == self.title }
    end

end