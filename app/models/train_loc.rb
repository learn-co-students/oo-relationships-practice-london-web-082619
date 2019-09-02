class Train_Loc

    @@all = []

    attr_accessor :trainer, :location

    def initialize(trainer, location)
        @trainer = trainer
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

end