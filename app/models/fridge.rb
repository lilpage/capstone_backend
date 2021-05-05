class Fridge < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient

  validates :ingredient_id, uniqueness: { scope: :user_id, message: "Already in fridge" }
end
