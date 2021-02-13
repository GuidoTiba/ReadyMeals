class Option < ApplicationRecord
  has_many :event_options
  has_many :recipe_options
  has_many :events, through: :event_options
  has_many :recipes, through: :recipe_options

  ## Validations

  validates :name, presence: true

  ESTILOS_COMIDA = %w(VEGANA CELIACA MEXICANA)
end
