class Actor 

    attr_accessor :name
    @@all = []
    
    def initialize(name) #Actor.new(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        #should return which actor has the most different characters played
    end

end