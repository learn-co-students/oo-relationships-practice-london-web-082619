class Ingredient

    attr_reader :name, :dessert, :calorie_count

    @@all = []

    def initialize(new_name, calorie_count, dessert)
        @name = new_name # instance variable
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all 
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        @@all.select do |i|
            i.name.include?(ingredient)
        end
    end

end


