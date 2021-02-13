class Meal < ApplicationRecord
  belongs_to :event
  belongs_to :recipe

  ## Validations

  validates :date, presence: true
end
