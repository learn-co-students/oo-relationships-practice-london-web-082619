class Ride

    attr_accessor :passenger, :driver, :distance
    @@all = []

    def initialize(passenger, driver, distance) #Ride.new(passenger, driver, distance)
        @passenger = passenger 
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    #should find the average distance of all rides
    def self.average_distance
        @@all.sum{ |ride| ride.distance } / @@all.length
    end


end