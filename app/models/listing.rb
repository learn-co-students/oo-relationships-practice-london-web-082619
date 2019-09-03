class Listing
    #listing has many trips
    #has many guests
    attr_accessor :name, :city
    @@all = [] #empty variable
    
    def initialize(city)
        @name = name
        @city = city
        @@all << self
    end
    
    def self.all
        @@all
    end

    def guests
         self.trips.map{|trip| trip.guest}
       #trips =  Trip.all.select {|trip| 
        #trip.listing == self
    end
    
    def trips
        Trip.all.select { |trip| trip.listing == self} 
    end
    #.select will return all trips(trip.all) 

    
    def trip_count
        trips.length
    end
    
    def self.find_all_by_name(city)
        @@all.select { |listing| listing.city == city}
        end

        def self.most_popular
            @@all.max_by{ |listing| listing.trip_count }
        end
    end