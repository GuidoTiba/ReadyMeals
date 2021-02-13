class RecipeOption < ApplicationRecord
  belongs_to :option
  belongs_to :recipe
end
