FactoryBot.define do
  factory :comment do
    user_id { 1 }
    content { "MyText" }
    blog_id { 1 }
  end
end
