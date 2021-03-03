class Event < ApplicationRecord
  belongs_to :user
  has_many :event_options
  has_many :options, through: :event_options
  has_many :meals
  accepts_nested_attributes_for :event_options

  ## Validations

  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_of_members, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def meals_with_recipe(recipe)
    meals.select{ |meal| meal.recipe == recipe }
  end
end
