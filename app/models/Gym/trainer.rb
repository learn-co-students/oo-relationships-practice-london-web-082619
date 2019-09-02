class Trainer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def clients
        Client.all.select { | client | client.trainer == self}
    end

    def num_clients
        clients.length
    end

    #class methods

    def self.all
        @@all
    end

    def self.most_clients
        @@all.max_by { | trainer | trainer.num_clients }
    end

    def self.least_client
        @@all.min_by { | trainer | trainer.num_clients }
    end

    


end