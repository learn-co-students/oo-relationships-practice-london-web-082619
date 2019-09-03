class Dessert

    @@all = []

    attr_accessor :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    # should return an array of ingredients for the dessert
    def ingredients
        Ingredient.all.select{ |ingredient| ingredient.dessert == self }
    end

    def calories
        #should return a number totaling all the calories for all the ingredients included in that dessert
        self.ingredients.sum{ |ingredient| ingredient.calorie_count }
    end

end