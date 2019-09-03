class Driver

    attr_accessor :name
    @@all = []

    def initialize(name) #Driver.new(name)
        @name = name 
        @@all << self
    end

    #returns an array of all drivers
    def self.all
        @@all
    end

    #returns all rides a driver has made
    def rides
        Ride.all.select{ |ride| ride.driver == self }
    end

    #returns all passengers a driver has had
    def passengers
        self.rides.map{ |ride| ride.passenger }
    end

    #helper class
    def mileage
        self.rides.sum{ |ride| ride.distance }
    end

    #takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
    def self.mileage_cap(distance)
        @@all.select{ |driver| driver.mileage > distance }
    end

end