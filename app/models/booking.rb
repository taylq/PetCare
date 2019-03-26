class Booking < ApplicationRecord
  belongs_to :event
  validates :event_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
