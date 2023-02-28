FactoryBot.define do
  factory :appointment do
    post_id { 1 }
    user_id { 1 }
    start_date { "2022-06-20" }
    end_date { "2022-06-20" }
    appointment_status_id { 1 }
    isactive { false }
  end
end
