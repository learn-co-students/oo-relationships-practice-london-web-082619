class Passenger
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return an array of all rides a passenger has taken
    def rides()
        Ride.all().select() { | ride | ride.passenger == self }
    end

    #Return an array of all drivers a passenger has ridden with
    def drivers()
        self.rides().map { | ride | ride.driver }
    end

    #Return the the total distnace the passenger has travelled as a float
    def total_distance()
        self.rides().map() { | ride | ride.distance() }.reduce(:+)
    end


    ###### Class methods ######
    
    #Return an array of all passengers
    def self.all()
        @@all
    end


end