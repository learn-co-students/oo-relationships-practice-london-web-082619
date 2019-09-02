class Ingredient

    attr_reader :name, :dessert, :calorie_count, :bakery

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
        @@all.select do | i |
            i.name.include?(ingredient)
        end
    end



    # def name
    #     return @name
    # end

    # def dessert
    #     return @dessert
    # end

    # def calorie_count
    #     return @calorie_count
    # end

    # def is_yummy?
    #     return yummy # won't work because local variable
    # end

end


