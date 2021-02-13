class Option < ApplicationRecord
  has_many :event_options
  has_many :recipe_options
  has_many :events, through: :event_options
  has_many :recipes, through: :recipe_options
end
