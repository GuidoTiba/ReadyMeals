class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipe_options
  has_many :ingredients, through: :recipe_ingredients
  has_many :options, through: :recipe_options
  has_many :meals
  has_many :events, through: :meals
  has_one_attached :photo

  ## Validations

  validates :name, presence: true
  validates :instructions, presence: true
  validates :details, presence: true
end
