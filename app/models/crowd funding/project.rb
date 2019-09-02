class Project

    attr_reader :name, :creator, :goal

    @@all = []

    def initialize(name, creator, goal)
        @name = name
        @creator = creator
        @goal = goal
        
        @@all << self
    end

    def pledges
        Pledge.all.select { |pledge| pledge.project == self}
    end

    def total_pledge_value
        pledges.sum { |pledge| pledge.amount}
    end

    def unique_pledgers
        pledges.map { |pledge| pledge.user}.uniq
    end

    def number_of_pledgers
        unique_pledgers.length
    end

    #class methods

    def self.all
        @@all
    end

    def self.no_pledges
        @@all.select { |projects| projects.pledges.length == 0 }
    end

    def self.above_goal
        @@all.select { |project| project.total_pledge_value > project.goal }
    end

    def self.most_backers
        @@all.max_by { |projects| projects.number_of_pledgers}
    end



    
end


