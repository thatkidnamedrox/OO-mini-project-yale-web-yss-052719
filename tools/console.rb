require_relative '../config/environment.rb'

# user_names = ["Prince", "Roxanne", "Peter", "Alex"]
# recipe_names = ["Pizza", "Chicken", "French Toast", "Potato"]
# ingredient_names = ["bacon", "cheese", "milk", "eggs", "bread", "orange juice"]
# users = []
# recipes = []
# ingredients = []

# # (1..5).each do |n|
# #     users << User.new
# #     recipes << Recipe.new
# #     ingredients << Ingredient.new
# # end

# user_names.each do |name|
#     users << User.new(name)
# end

# recipe_names.each do |name|
#     recipes << Recipe.new(name)
# end

# ingredient_names.each do |name|
#     ingredients << Ingredient.new(name)
# end


# rating = (0..5).map {|n| n }
# users.each do |user|
#     recipe = recipes.sample
#     user.add_recipe_card(recipe, Time.now, rating.sample)
#     user.declare_allergy(ingredients.sample)
# end

# recipes.each do |recipe|
#     user = users.sample
#     user.add_recipe_card(recipe, Time.now, rating.sample)

#     selector = (0..ingredients.size).map {|n| n }
#     recipe_ingredients = ingredients[selector.sample, ingredients.size]
#     recipe.add_ingredients(recipe_ingredients)
# end

binding.pry
