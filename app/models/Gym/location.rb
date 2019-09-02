class Location

    attr_reader :location

    @@all = []

    def initialize(location)
        @location = location

        @@all << self
    end

    def loctrans
        LocTran.all.select { | loctran | loctran.location == self}
    end

    def trainers
        loctrans.map { |loctran| loctran.trainer }
    end

    def num_clients
        trainers.sum { | trainer | trainer.num_clients }
    end

    #class methods


    def self.all
        @@all
    end

    def self.least_clients
        @@all.min_by { | location | location.num_clients}
    end

end