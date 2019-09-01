class Guest
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name

        @@all << self
    end

    #Return an array of all trips the guest has taken
    def trips()
        Trip.all().select() { | trip | trip.guest() == self }
    end

    #Return an array of all listings the guest has stayed at
    def listings()
        self.trips().map() { | trip | trip.listing() }.uniq
    end

    #Return the number of trips a guest has taken
    def trip_count()
        self.trips().length()
    end


    ###### Class methods ######

    #Return an array of all guests
    def self.all()
        @@all
    end

    #Return an array of guests who have more than 1 trip
    def self.pro_traveller()
        self.all().select() { | guest | guest.trip_count() > 1 }
    end

    #Return all the guests with the give name
    def self.find_by_name(name)
        self.all().select() { | guest | guest.name == name }
    end

end