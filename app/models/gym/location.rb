class Location
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name

        @@all << self
    end

    #Create a new contract with a trainer
    def sign_trainer(trainer)
        Contract.new(trainer, self)
    end

    #Return an array of the location's contracts with trainers
    def contracts()
        Contract.all().select() { | contract | contract.location == self }
    end
    
    #Return an array of all trainers the location has contracts with
    def trainers()
        self.contracts().map() { | contract | contract.trainer }
    end

    #Return an array of all clients at that location via their trainers
    def clients()
        self.trainers().map { | trainer | trainer.clients() }.flatten().uniq
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