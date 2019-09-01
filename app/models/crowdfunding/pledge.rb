class Pledge
    attr_reader :project, :backer, :amount

    @@all = []

    ###### Instance methods ######

    def initialize(project, backer, amount)
        @project = project
        @backer = backer
        @amount = amount
        @@all << self
    end


    ###### Class methods ######

    #Return an array of all pledges
    def self.all()
        @@all
    end

end