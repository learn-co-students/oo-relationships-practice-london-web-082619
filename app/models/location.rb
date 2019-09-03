class Location

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def train_loc
        Train_Loc.all.select { |train_loc| train_loc.location == self }
    end

    def trainers
        self.train_loc.collect{ |train_loc| train_loc.trainer }
    end

    def clients
        Trainer.all.collect{ |trainer| trainer.clients }.flatten.uniq
    end

    def self.least_clients
        #should find which location has the least clients training there
        Location.all.min_by{ |location| location.clients }
    end

end