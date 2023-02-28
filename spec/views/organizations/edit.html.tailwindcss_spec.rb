require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      name: "MyString",
      organization_type_id: 1,
      contact_person: "MyString",
      physical_address: "MyText",
      city: "MyString",
      province: "MyString",
      telephone: "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[organization_type_id]"

      assert_select "input[name=?]", "organization[contact_person]"

      assert_select "textarea[name=?]", "organization[physical_address]"

      assert_select "input[name=?]", "organization[city]"

      assert_select "input[name=?]", "organization[province]"

      assert_select "input[name=?]", "organization[telephone]"
    end
  end
end
