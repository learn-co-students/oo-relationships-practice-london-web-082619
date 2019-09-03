class Trip
    #trips belongs to listing
    #belongs to guest
    attr_reader :listing, :guest
    @@all = []
    
    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
    end
    
    def self.all
    @@all
    end

    end