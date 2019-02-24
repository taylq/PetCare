FactoryBot.define do
  factory :desease do
    type { 1 }
    name { "MyString" }
    symptom { "MyText" }
    reason { "MyText" }
    treatment { "MyText" }
    description { "MyText" }
  end
end
