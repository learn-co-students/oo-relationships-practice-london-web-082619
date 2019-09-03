class User

    @@all = []

    attr_accessor :name

    def initialize(name) #User.new(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def projects
        #returns all the user's projects
        Project.all.select{ |project| project.creator ==  self}
    end

    def pledges
        #return all the user's pledges
        Pledge.all.select{ |pledge| pledge.backer == self }
    end

    def self.highest_pledge #User.highest_pledge
        #returns the user who has made the highest pledge
        Pledge.all.max_by{ |pledge| pledge.amount }.backer
    end

    def self.multi_pledger
        #returns all users who have pledged to multiple projects
        @@all.select{ |user| user.pledges.length > 1 }
    end

    def self.project_creator #User.project_creator
        #returns all users who have created a project
        @@all.select{ |user| user.projects.length > 1 }
    end

end