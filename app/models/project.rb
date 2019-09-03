class Project

    @@all = []

    attr_accessor :name, :goal
    attr_reader :creator

    def initialize(name, creator, goal) #Project.new(name, creator, goal)
        @name = name
        @creator = creator
        @goal = goal
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        #returns all this project's pledges
        Pledge.all.select{ |pledge| pledge.project == self }
    end

    def backers
        #return all users who have backed this project
        self.pledges.map{ |pledge| pledge.backer }
    end

    def amount_raised
        #returns the amount of money raised
        self.pledges.sum{ |pledge| pledge.amount }
    end

    def self.no_pledges #Project.no_pledges
        #returns all projects which have no pledges yet
        @@all.select{ |project| project.pledges.length == 0 }
    end

    def self.above_goal
        # returns all projects which have met or exceeded their pledge goal
        @@all.select{ |project| project.amount_raised >= project.goal }
    end
    
    def self.most_backers #Project.most_backers
        #returns the project with the highest number of backers
        @@all.max_by{ |project| project.backers.length }
    end 


end