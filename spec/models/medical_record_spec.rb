require 'rails_helper'

RSpec.describe MedicalRecord, type: :model do
  it {is_expected.to have_many :medical_records_services}
  it {is_expected.to have_many :service}
  it {is_expected.to belong_to :pet}
  it {is_expected.to have_one :bill}
  it {is_expected.to have_many :medical_records_services}
  it {is_expected.to have_many :service}
  it {is_expected.to belong_to :pet}
  it {is_expected.to have_one :bill}
  it {is_expected.to have_many :medical_records_services}
  it {is_expected.to have_many :service}
  it {is_expected.to belong_to :pet}
  it {is_expected.to have_one :bill}

end
