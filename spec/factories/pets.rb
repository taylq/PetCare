FactoryBot.define do
  factory :pet do
    user_id { 1 }
    name { "MyString" }
    image { "MyString" }
    gender { 1 }
    type { 1 }
  end
end
