# create files for your ruby classes in this directory
class Listing
    attr_reader :name, :city 
    @@all = []
    def initialize(name, city)
        @city = city
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}.uniq
    end

    def trip_count
        trips.length
    end

    def self.find_all_by_city(city)
        @@all.select {|listing| listing.city == city}.uniq
    end

    def self.most_popular
        @@all.max_by {|listing| listing.trip_count}
    end

    def self.all
        @@all
    end
end