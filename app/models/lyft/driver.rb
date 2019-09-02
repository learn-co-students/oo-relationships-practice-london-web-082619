class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def rides
        Ride.all.select { |ride| ride.driver == self}
    end

    def passengers
        rides.map { |ride| ride.passenger}
    end

    def mileage
        Ride.all.sum { |ride| ride.distance}
    end


    #class methods

    def self.all
        @@all
    end

    def self.mileage_cap(float)
        @@all.select { | driver | driver.mileage > float}
    end

end
