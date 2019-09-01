class Trainer
    attr_accessor :locations
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    #Initialize a trainer with a name and an array of locations
    def initialize(name, locations)
        @name = name
        @locations = locations

        @@all << self
    end

    #Remove the given location from the trainer's array of locations
    def leave_location(location)
        if self.locations.include?(location)
            self.locations.delete(location)
        else
            "#{self.name} doesn't work from #{location.name}."
        end
    end

    #Add the given location to the trainer's array of locations
    def join_location(location)
        if !self.locations.include?(location)
            self.locations << location
        else
            "#{self.name} already works from #{location.name}."
        end
    end

    #Return an array of clients for this trainer
    def clients()
        Client.all().select() { | client | client.trainer == self }
    end


    ###### Class methods ######
    
    #Return all trainers *
    def self.all()
        @@all
    end

    #Return the trainer with the most clients *
    def self.most_clients()
        self.all().max_by { | trainer | trainer.clients().length() }
    end

end