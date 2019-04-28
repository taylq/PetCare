require 'rails_helper'

RSpec.describe Bill, type: :model do
  it {is_expected.to belong_to :medical_record}
end
