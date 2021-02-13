class Event < ApplicationRecord
  belongs_to :user
  has_many :event_options
  has_many :options, through: :event_options
  has_many :meals

  ## Validations

  validates :title, presence: true
  validates :number_of_members, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
