class Ride
    attr_reader :distance, :passenger, :driver

    @@all = []

    ###### Instance methods ######

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all << self
    end


    ###### Class methods ######

    #Return an array of all rides
    def self.all()
        @@all
    end

    #Return the total distance of all rides
    def self.total_distance()
        self.all().map() { | ride | ride.distance() }.reduce(:+)
    end

    #Return the average distance of all rides
    def self.average_distance()
        self.total_distance() / self.all().length()
    end

end