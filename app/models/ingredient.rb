class Ingredient < ApplicationRecord
  has_many :ingredientlists
  has_many :recipes, through: :ingredientlists
end
