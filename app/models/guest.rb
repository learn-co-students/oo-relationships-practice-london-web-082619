class Guest
    #has many trips
    #has many listing
attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
@@all
end

def listings
    self.trips.map{|trip| trip.listing}
end

def trips
    Trip.all.select { |trip| trip.guest == self}
end

def trip_count
    trips.length
end

def self.pro_traveller
    @@all.select { |guest| guest.trip_count}
end

def self.find_all_by_name(name)
    @@all.select {|guest| guest.name == name}
end

end