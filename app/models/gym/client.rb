class Client
    
    attr_reader :name, :trainer

    @@all = []

    def initialize(name, trainer = nil)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all
        @@all
    end
end