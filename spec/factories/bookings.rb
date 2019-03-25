FactoryBot.define do
  factory :booking do
    user_id { 1 }
    event_id { 1 }
    start_time { "2019-03-25 17:32:25" }
    end_time { "2019-03-25 17:32:25" }
  end
end
