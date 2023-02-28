FactoryBot.define do
  factory :post do
    post_title { "MyString" }
    post_name { "MyString" }
    supervisor_id { 1 }
    organization_unit_id { 1 }
    post_level { 1 }
  end
end
