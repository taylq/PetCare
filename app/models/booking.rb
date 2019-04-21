class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :event_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  scope :joins_event, ->doctor_id do
    joins(:event).where("events.doctor_id = ?", doctor_id)
  end
end
