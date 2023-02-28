require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        name: "Name",
        organization_type_id: 2,
        contact_person: "Contact Person",
        physical_address: "MyText",
        city: "City",
        province: "Province",
        telephone: "Telephone"
      ),
      Organization.create!(
        name: "Name",
        organization_type_id: 2,
        contact_person: "Contact Person",
        physical_address: "MyText",
        city: "City",
        province: "Province",
        telephone: "Telephone"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Contact Person".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Province".to_s, count: 2
    assert_select "tr>td", text: "Telephone".to_s, count: 2
  end
end
