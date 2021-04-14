class Recipe < ApplicationRecord
  has_many :favorites
  has_many :ingredientlists
  has_many :ingredients, through: :ingredientlists
end
