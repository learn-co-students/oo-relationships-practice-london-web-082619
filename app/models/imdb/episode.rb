class Episode
    attr_accessor :characters
    attr_reader :show

    @@all = []

    ###### Instance methods ######

    def initialize(show, characters)
        @show = show
        @characters = characters
        @@all << self
    end


    ###### Class methods ######

    #Return an array of all episodes
    def self.all()
        @@all
    end
end