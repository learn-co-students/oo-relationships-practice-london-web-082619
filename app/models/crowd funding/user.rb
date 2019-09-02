class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def pledges
        Pledge.all.select { |pledge| pledge.user == self}
    end

    def biggest_pledge
        pledges.max_by {|pledge| pledge.amount}
    end

    def biggest_pledge_amount
        biggest_pledge.amount
    end

    def created_projects
        Project.all.select { |project| project.creator == self }
    end

    def number_of_projects_created
        created_projects.length
    end

#class methods

    def self.all
        @@all
    end

    def self.highest_pledge
        @@all.max_by { |user| user.biggest_pledge_amount }
    end

    def self.multi_pledger
        @@all.select { |user| user.pledges.length > 1}
    end

    def self.project_creator
        @@all.select { |user| user.number_of_projects_created >= 1 }
    end


end


