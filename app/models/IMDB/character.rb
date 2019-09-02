class Character

    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor

        @@all << self
    end

    def shows
        CharShow.all { | charshow | charshow.character == self }
    end

    def movies
        CharMov.all { | charmov | charshow.character == self }
    end

    def num_shows
        shows.length
    end

    def num_movies
        movies.length
    end

    def num_shows_movies
        num_movies + num_shows
    end

    def movie_titles
        movies.map { | movie | movie.title }
    end

    def show_titles
        shows.map { | show | show.title}
    end

#class methods
    def self.all
        @@all
    end

    def self.most_appearances
        @@all.max_by { | characters | characters.num_shows_movies}
    end

    def self.find_character_by_name(name)
        @@all.select { | character | character.name == name}
    end
    
end