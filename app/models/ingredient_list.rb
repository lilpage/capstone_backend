class IngredientList < ApplicationRecord
  belongs_to :ingredients
  belongs_to :recipes
end
