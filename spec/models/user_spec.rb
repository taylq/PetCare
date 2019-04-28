require 'rails_helper'

RSpec.describe User, type: :model do
  it {is_expected.to have_many :blogs}
  it {is_expected.to have_many :active_relationships}
  it {is_expected.to have_many :passive_relationships}
  it {is_expected.to have_many :following}
  it {is_expected.to have_many :followers}
  it {is_expected.to have_many :pets}
  it {is_expected.to have_many :comments}
  it {is_expected.to have_many :messages}
  it {is_expected.to have_many :bookings}
  it {is_expected.to have_many :conversations}
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(50) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_most(255) }
    it {is_expected.to have_many :blogs}
  it {is_expected.to have_many :active_relationships}
  it {is_expected.to have_many :passive_relationships}
  it {is_expected.to have_many :following}
  it {is_expected.to have_many :followers}
  it {is_expected.to have_many :pets}
  it {is_expected.to have_many :comments}
  it {is_expected.to have_many :messages}
  it {is_expected.to have_many :bookings}
  it {is_expected.to have_many :conversations}
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(50) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_most(255) }
    it {is_expected.to have_many :blogs}
  it {is_expected.to have_many :active_relationships}
  it {is_expected.to have_many :passive_relationships}
  it {is_expected.to have_many :following}
  it {is_expected.to have_many :followers}
  it {is_expected.to have_many :pets}
  it {is_expected.to have_many :comments}
  it {is_expected.to have_many :messages}
  it {is_expected.to have_many :bookings}
  it {is_expected.to have_many :conversations}
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(50) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_most(255) }
end
