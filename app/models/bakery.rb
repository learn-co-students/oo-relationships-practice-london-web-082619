class Bakery

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select{ |dessert| dessert.bakery == self }
    end

    #should return an array of ingredients for the bakery's desserts
    def ingredients
        self.desserts.map { |dessert| dessert.ingredients }
    end

    def average_calories
        #should return a number totaling the average number of calories for 
        #the desserts sold at this bakery
        self.desserts.sum{ |dessert| dessert.calories } / self.desserts.length
    end

    def shopping_list
        #should return a string of names for ingredients for the bakery
        # list = []
        # self.desserts.each{|dessert| list << dessert.name }
        self.desserts.map{ |dessert| dessert.name }.join(" ")
        # return list.join(" ")
    end

end