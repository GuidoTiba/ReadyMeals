class Event < ApplicationRecord
  belongs_to :user
  has_many :event_options
  has_many :options, through: :event_options
  has_many :meals
end
