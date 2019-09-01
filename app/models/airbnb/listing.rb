class Listing
    attr_accessor :name
    attr_reader :city

    @@all = []

    ###### Instance methods ######

    def initialize(name, city)
        @name = name
        @city = city

        @@all << self
    end

    #Return an array of all trips to the listing
    def trips()
        Trip.all().select() { | trip | trip.listing == self }
    end

    #Return an array of all guests who have stayed at the listing
    def guests()
        self.trips().map() { | trip | trip.guest }.uniq
    end

    #Return the number of trips to the listing
    def trip_count()
        self.trips().length()
    end


    ###### Class methods ######
    
    #Return an array of all listings
    def self.all()
        @@all
    end

    #Return an array of all the listings for a given city
    def self.find_by_city(city)
        self.all().select() { | listing | listing.city == city }
    end

    #Return the listing that has had the most trips
    def self.most_popular
        self.all().max_by() { | listing | listing.trip_count() }
    end
end