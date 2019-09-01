class Client
    attr_reader :name
    attr_accessor :trainer

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name

        @@all << self
    end

    #Find a new trainer
    def assign_trainer(trainer)
        self.trainer = trainer
    end

    ###### Class methods ######

    #Return an array of all clients
    def self.all()
        @@all
    end
end