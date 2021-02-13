class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  ## Validations

  validates :unit, presence: true
  validates :ammount, presence: true, numericality: { only_float: true, greater_than: 0 }
end
