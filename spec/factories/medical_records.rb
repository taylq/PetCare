FactoryBot.define do
  factory :medical_record do
    pet_id { 1 }
    doctor_id { 1 }
    result { "MyText" }
    status { 1 }
    description { "MyText" }
  end
end
