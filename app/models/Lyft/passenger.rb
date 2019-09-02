class Passenger
    
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}.uniq
    end

    def total_distance
        rides.sum {|ride| ride.distance}
    end

    def self.premium_members
        @@all.select {|passenger| passenger.total_distance > 100}
    end

    def self.all
        @@all
    end
end