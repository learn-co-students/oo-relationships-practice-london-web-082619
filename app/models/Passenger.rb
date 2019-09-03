class Passenger

    attr_accessor :name
    @@all = []

    def initialize(name) #Passenger.new(name)
        @name = name 
        @@all << self
    end

    #returns an array of all passengers
    def self.all
        @@all
    end

    #returns all rides a passenger has been on
    def rides
        Ride.all.select{ |ride| ride.passenger == self }
    end

    #returns all drivers a passenger has ridden with
    def drivers
        self.rides.map{ |ride| ride.driver }
    end
    
    #should calculate the total distance the passenger has travelled with the service
    def total_distance
        self.rides.sum{ |ride| ride.distance }
    end

    #should find all passengers who have travelled over 100 miles with the service
    def self.premium_members
        @@all.select{ |passenger| passenger.total_distance > 100 }
    end 

end