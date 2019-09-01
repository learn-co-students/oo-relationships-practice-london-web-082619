class Location
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name

        @@all << self
    end

    #Return an array of all trainers at that location
    def trainers()
        Trainer.all().select() { | trainer | trainer.locations().include?(self) }
    end

    #Return an array of all clients at that location via their trainers
    def clients()
        self.trainers().map { | trainer | trainer.clients() }.flatten()
    end


    ###### Class methods ######
    
    #Return an array of all locations
    def self.all()
        @@all
    end

    #Return the location that has the least clients
    def self.least_clients()
        self.all().min_by() { | location | location.clients().length() }
    end

end