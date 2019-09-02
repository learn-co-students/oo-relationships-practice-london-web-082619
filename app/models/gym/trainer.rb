class Trainer
    
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients
        Client.all.select {|client| client.trainer == self}
    end

    def self.most_clients
        @@all.max_by {|trainer| trainer.clients.length}
    end

    def self.all
        @@all
    end
end