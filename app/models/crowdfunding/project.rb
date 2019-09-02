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
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def total_pledge_value
        pledges.sum {|pledge| pledge.amount}
    end

    def backers
        pledges.map {|pledge| pledge.user}.uniq
    end

    def self.no_pledges
        @@all.select {|project| project.pledges.length == 0}
    end

    def self.above_goal
        @@all.select {|project| project.total_pledge_value > project.goal}
    end 

    def self.most_backers
        @@all.max_by {|project| project.backers.length}
    end

    def self.all
        @@all 
    end
end