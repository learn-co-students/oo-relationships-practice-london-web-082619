class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def trips
        Trip.all.select { | trip | trip.guest == self}
    end

    def listings
        trips.map { | trip | trip.listing}
    end

    def trip_count
        guests.length
    end

    #class methods

    def self.all
        @@all
    end

    def self.pro_traveller
        @@all.select { | guest | guest.trip_count > 1}
    end

    def self.find_by_name(name)
        @@all.select { | guest | guest.name == name}
    end

end
