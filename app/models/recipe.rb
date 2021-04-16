class Recipe < ApplicationRecord
  has_many :favorites
  has_many :ingredient_lists
  has_many :ingredients, through: :ingredient_lists
end
