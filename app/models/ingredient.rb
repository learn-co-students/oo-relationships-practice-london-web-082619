class Ingredient

    attr_reader :dessert, :calorie_count
    attr_accessor :name

    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name 
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all 
    end

    def bakery #flour.bakery #=> Bakery object 
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient_s)
    #should take a string argument return an array of all ingredients that include that string in their name
        @@all.select{ |ingredient| ingredient.name.include? (ingredient_s)}
    end

end


