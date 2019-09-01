class Project
    attr_reader :name, :creator, :goal

    @@all = []

    ###### Instance methods ######

    def initialize(name, goal, creator)
        @name = name
        @goal = goal
        @creator = creator
        @@all << self
    end

    #Returns an array of the project's pledges
    def pledges()
        Pledge.all().select() { | pledge | pledge.project() == self }
    end

    #Returns the total amount pledged to the project
    def total_pledged()
        self.pledges().reduce { | memo, pledge | memo + pledge.amount() }
    end

    #Tests whether the project has met or exceeded its goal
    def met_goal?()
        self.total_pledged() >= self.goal()
    end

    #Returns an array of project backers
    def backers()
        self.pledges().map() { | pledge | pledge.backer }.uniq
    end


    ###### Class methods ######
    
    #Return an array of all projects
    def self.all()
        @@all
    end

    #Return an array of projects with no pledges
    def self.no_pledges()
        self.all().select() { | project | project.pledges() == [] }
    end

    #Return an array of projects that have met or exceeded their goal
    def self.above_goal()
        self.all().select() { | project | project.met_goal?() }
    end

    #Return the project with the highest number of backers
    def self.most_backers()
        self.all().max_by() { | project | project.backers().length() }
    end

end