class Driver
    
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        rides.map {|ride| ride.passenger}.uniq
    end

    def mileage
        rides.sum {|ride| ride.distance}
    end

    def self.mileage_cap(distance)
        @@all.select {|driver| driver.mileage > distance}
    end

    def self.all
        @@all
    end
end