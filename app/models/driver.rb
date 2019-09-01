class Driver
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Return an array of all rides the driver has made
    def rides()
        Ride.all().select() { | ride | ride.driver == self }
    end

    #Returns a float of the total distance driven by the driver
    def mileage()
        self.rides().map() { | ride | ride.distance() }.reduce(:+)
    end

    ###### Class methods ######
    
    #Return an array of all drivers
    def self.all()
        @@all
    end

    #Returns an array of drivers who have exceeded the given floating point distance
    def self.mileage_cap(mileage)
        self.all().select() { | driver | driver.mileage() > mileage }
    end

end