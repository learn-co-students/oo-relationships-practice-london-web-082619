class Location
    
    attr_reader :location

    @@all = []

    def initialize(location)
        @location = location
        @@all << self
    end

    def loctrains
        Loctrain.all.select {|lt| lt.location == self}
    end

    def trainers
        loctrains.map {|lt| lt.trainer}
    end

    def num_clients
        trainers.sum {|trainer| trainer.clients.length}
    end

    def self.least_clients
        @@all.min_by {|location| location.num_clients}
    end

    def self.all
        @@all
    end
end