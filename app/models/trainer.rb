class Trainer

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select{ |client| client.trainer == self }
    end

    def train_loc
        Train_Loc.all.select { |train_loc| train_loc.trainer == self }
    end

    def locations
        self.train_loc.collect { |train_loc| train_loc.location }
    end

    def assign_location(location)
        Train_Loc.new(self, location)
        location
    end

   def self.most_clients
        #should find which trainer has the most clients. give that trainer a bonus!
        Trainer.all.max_by{ |trainer| trainer.clients.length }
    end
end