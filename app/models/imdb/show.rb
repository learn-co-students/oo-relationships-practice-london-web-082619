class Show
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return an array of the show's episodes - works!
    def episodes()
        Episode.all().select() { | episode | episode.show == self }
    end

    #Return an array of the show's characters - works!
    def characters()
        self.episodes().map() { | episode | episode.characters }.flatten.uniq
    end

    #Create a new episode for the show - works!
    def create_episode(title)
        if self.episodes().find() { | episode | episode.title == title }
            "#{self.name} already has an episode called #{title}"
        else
            Episode.new(title, self)
        end
    end


    ###### Class methods ######

    #Return an array of all shows - works!
    def self.all()
        @@all
    end

    #Return an array of shows that have movies by the same name

    def self.on_the_big_screen()
        movie_titles = Movie.all().map() { | movie | movie.title() }
        self.all.select() { | show | movie_titles.include?(show.name()) }
    end

end