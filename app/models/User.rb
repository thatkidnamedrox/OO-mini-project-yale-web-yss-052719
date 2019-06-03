class User
    
    @@all = []

    attr_reader :name

    def initialize(name="dud")
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        cards = RecipeCard.all.find_all {|card| card.user == self}
        cards.map {|card| card.recipe }
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        allergies = Allergy.all.find_all {|allergy| allergy.user == self }
        allergies.map {|allergy| allergy.ingredient }
    end

    def top_three_recipes
        cards = recipes.map {|recipe| RecipeCard.all.find {|card| card.recipe == recipe }}
        cards = cards.sort_by {|card| card.rating }
        cards.reverse!
        cards[0, 3].map {|card| card.recipe }
    end

    def most_recent_recipe
        cards = recipes.map {|recipe| RecipeCard.all.find {|card| card.recipe == recipe }}
        cards = cards.sort_by {|card| card.date }
        cards.reverse!
        cards.first.recipe
    end
end