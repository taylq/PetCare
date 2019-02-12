FactoryBot.define do
  factory :blog do
    image { "MyString" }
    title { "MyString" }
    content { "MyText" }
    user_id { 1 }
  end
end
