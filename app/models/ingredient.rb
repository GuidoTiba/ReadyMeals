class Ingredient < ApplicationRecord
  has_many :recipe_ingredients

  ## Validations

  validates :name, presence: true
end
