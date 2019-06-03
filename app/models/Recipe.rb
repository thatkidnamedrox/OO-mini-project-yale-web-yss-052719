class Recipe

    @@all = []

    attr_reader :name

    def initialize(name="dud")
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular

        most_popular = self.all.first

        self.all.each do |recipe|
            if recipe.users.size > most_popular.users.size
                most_popular = recipe
            end
        end

        most_popular
    end


    def users
        cards = RecipeCard.all.find_all {|card| card.recipe == self}
        cards.map {|card| card.user }
    end

    def ingredients
        elements = RecipeIngredient.all.find_all {|e| e.recipe == self }
        elements.map {|e| e.ingredient }
    end

    def allergens
        ingredients.find_all {|ingredient| Allergy.all.find {|allergy| allergy.ingredient == ingredient}}
    end

    def add_ingredients(new_ingredients)
        new_ingredients.each {|ingredient| RecipeIngredient.new(ingredient, self)}
    end
end