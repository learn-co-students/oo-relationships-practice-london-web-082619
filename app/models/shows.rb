class Show 

    attr_accessor :title

    def initialize(title)
        @title = title
        @@all << all
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        #should return Movies that share the same name as this Show
    end

end