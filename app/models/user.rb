class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :favorites
  has_many :recipes, through: :favorites
  has_many :fridges
  has_many :ingredients, through: :fridges
end
