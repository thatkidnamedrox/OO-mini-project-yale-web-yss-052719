class Ingredient

    @@all = []
    attr_reader :name

    def initialize(name="dud")
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        most_common = self.all.first
        self.all.each do |ingredient|
            if ingredient.allergic_users.size > most_common.allergic_users.size
                most_common = ingredient
            end
        end
        most_common
    end

    def allergic_users
        allergies = Allergy.all.find_all {|allergy| allergy.ingredient == self }
        allergies.map {|allergy| allergy.user } 
    end

end