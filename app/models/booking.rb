class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :pet
  validates :event_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  scope :joins_event, ->doctor_id do
    joins(:event).where("events.doctor_id = ?", doctor_id)
  end

  scope :joins_event1, ->nurse_id do
    joins(:event).where("events.nurse_id = ?", nurse_id)
  end
end
