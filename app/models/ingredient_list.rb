class IngredientList < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
end
