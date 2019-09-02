class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def created_projects
        Project.all.select {|project| project.creator == self}
    end

    def num_created_projects
        created_projects.length
    end

    def pledges
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def biggest_pledge
        pledges.max_by {|pledge| pledge.amount}
    end

    def self.highest_pledge
        @@all.max_by {|user| user.biggest_pledge.amount}
    end

    def self.multi_pledger
        @@all.select {|user| user.pledges.uniq.length > 1}
    end

    def self.project_creator
        @@all.select {|user| user.num_created_projects >= 1}
    end

    def self.all
        @@all 
    end
end