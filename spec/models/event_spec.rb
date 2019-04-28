require 'rails_helper'

RSpec.describe Event, type: :model do
  it {is_expected.to have_many :bookings}
  it {is_expected.to belong_to :doctor}
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  it {is_expected.to have_many :bookings}
  it {is_expected.to belong_to :doctor}
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  it {is_expected.to have_many :bookings}
  it {is_expected.to belong_to :doctor}
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
  it {is_expected.to have_many :bookings}
  it {is_expected.to belong_to :doctor}
  it { is_expected.to validate_presence_of(:start_date) }
  it { is_expected.to validate_presence_of(:end_date) }
end
