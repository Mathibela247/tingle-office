FactoryBot.define do
  factory :organization do
    name { "MyString" }
    organization_type_id { 1 }
    contact_person { "MyString" }
    physical_address { "MyText" }
    city { "MyString" }
    province { "MyString" }
    telephone { "MyString" }
  end
end
