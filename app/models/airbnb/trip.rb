class Trip
    attr_reader :guest, :listing

    @@all = []

    ###### Instance methods ######

    def initialize(listing, guest)
        @guest = guest
        @listing = listing

        @@all << self
    end


    ###### Class methods ######

    #Return an array of all trips
    def self.all()
        @@all
    end

end