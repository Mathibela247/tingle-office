require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      name: "MyString",
      organization_type_id: 1,
      contact_person: "MyString",
      physical_address: "MyText",
      city: "MyString",
      province: "MyString",
      telephone: "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

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
