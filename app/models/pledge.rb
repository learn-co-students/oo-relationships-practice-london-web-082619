class Pledge

    @@all = []

    attr_reader :backer, :project, :amount

    def initialize(backer, project, amount) #Pledge.new(backer, project, amount)
        @backer = backer
        @project = project
        @amount  = amount
        @@all << self
    end

    def self.all
        @@all
    end

    def user
        #returns the user associated with a particular pledge
        @backer
    end


end