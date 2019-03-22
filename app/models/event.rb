class Event < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true

  belongs_to :doctor, class_name: User.name
end