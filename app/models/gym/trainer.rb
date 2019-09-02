class Trainer
    attr_accessor :locations
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    #Initialize a trainer with a name and an array of locations
    def initialize(name)
        @name = name

        @@all << self
    end

    #Return an array of all the trainer's contracts with locations
    def contracts()
        Contract.all().select() { | contract | contract.trainer == self }
    end


    #Return an array of all the trainer's locations
    def locations()
        self.contracts().map() { | contract | contract.location }
    end

    #Create a contract with a new location
    def join_location(location)
        if self.locations().include?(location)
            return "#{self.name} already work from #{location.name}"
        else
            Contract.new(self, location)
        end
    end

    #Return an array of clients for this trainer
    def clients()
        Client.all().select() { | client | client.trainer == self }
    end


    ###### Class methods ######
    
    #Return all trainers
    def self.all()
        @@all
    end

    #Return the trainer with the most clients
    def self.most_clients()
        self.all().max_by { | trainer | trainer.clients().length() }
    end

end