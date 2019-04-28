require 'rails_helper'

RSpec.describe MedicalRecordsService, type: :model do
  it {is_expected.to belong_to :service}
  it {is_expected.to belong_to :medical_record}
  it {is_expected.to belong_to :service}
  it {is_expected.to belong_to :medical_record}
  it {is_expected.to belong_to :service}
  it {is_expected.to belong_to :medical_record}
  it {is_expected.to belong_to :service}
  it {is_expected.to belong_to :medical_record}
end
