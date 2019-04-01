class Event < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  has_many :bookings, dependent: :destroy
  belongs_to :doctor, -> { where role: 2 }, class_name: User.name

  scope :find_date, -> (start_time, end_time){where("#{start_time} > events.start_date and #{end_time} < events.end_date")}
end