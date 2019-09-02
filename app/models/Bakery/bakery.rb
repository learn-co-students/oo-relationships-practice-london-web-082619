class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        # should return an array of all ingredients this bakery uses
        self.desserts.collect {|dessert| dessert.ingredients}
        # Ingredient.all.select do |ingredient|
        #     ingredient.bakery == self
        # end
    end

    def average_calories
        desserts.sum {|dessert| dessert.calorie_count}.to_f / desserts.length
    end
end