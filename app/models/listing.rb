class Listing

    @@all = []

    attr_accessor :city

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
    #returns an array of all trips at a listing
        Trip.all.select{ |trip| trip.listing == self }
    end

    def guests
    #returns an array of all guests who have stayed at a listing
        self.trips.map{ |trip| trip.guest }.uniq
    end

    def trip_count
    # returns the number of trips that have been taken to that listing
        self.trips.length
    end

    def self.find_all_by_city(city)
    #takes an argument of a city name (as a string) and returns all the listings for that city
        @@all.select{ |listing| listing.city == self }
    end

    def self.most_popular
    #finds the listing that has had the most trips
        @@all.max_by{ |listing| listing.trips.length }
    end

end