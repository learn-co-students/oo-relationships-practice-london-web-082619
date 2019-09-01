class User
    attr_accessor :projects, :pledges
    attr_reader :name

    @@all = []

    ###### Instance methods ######

    def initialize(name)
        @name = name
        @@all << self
    end

    #Start a new project with the current user as its creator
    def start_project(name, goal)
        Project.new(name, goal, self)
    end

    #Create a new pledge with an amount of money (float)
    def back_project(project, amount)
        Pledge.new(project, self, amount)
    end

    #Return an array of the users projects
    def projects()
        Project.all().select() { | project | project.creator() == self }
    end

    #Return an array of pledges made by the user
    def pledges()
        Pledge.all().select() { | pledge | pledge.backer == self }
    end

    #Return the user's highest pledge
    def highest_pledge()
        self.pledges().max_by() { | pledge | pledge.amount() }
    end


    ###### Class methods ######

    #Return an array of all users
    def self.all()
        @@all
    end

    #Return the user who made the highest pledge
    def self.highest_pledge()
        self.all().max_by() { | user | highest_pledge().amount() }
    end

    #Return an array of users who have pledged to > 1 project
    def self.multi_pledgers()
        self.all().select() { | user | user.pledges().length() > 1 }
    end

    #Return an array of all users who have created a project
    def self.project_creator()
        self.all().select() { | user | user.projects().length() > 0 }
    end

end