class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipe_options
  has_many :ingredients, through: :recipe_ingredients
  has_many :options, through: :recipe_options

  ## Validations

  validates :name, presence: true
  validates :instructions, presence: true
  validates :details, presence: true
end
