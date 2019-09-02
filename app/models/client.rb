class Client

    @@all = []

    attr_accessor :trainer
    attr_reader :name

    def initialize(name, trainer)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        #should take a trainer as argument and assign it to the client
        @trainer = trainer
    end

end