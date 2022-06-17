require "application_system_test_case"

class OrganizationUnitsTest < ApplicationSystemTestCase
  setup do
    @organization_unit = organization_units(:one)
  end

  test "visiting the index" do
    visit organization_units_url
    assert_selector "h1", text: "Organization units"
  end

  test "should create organization unit" do
    visit organization_units_url
    click_on "New organization unit"

    fill_in "Description", with: @organization_unit.description
    fill_in "Name", with: @organization_unit.name
    fill_in "Organization type", with: @organization_unit.organization_type_id
    click_on "Create Organization unit"

    assert_text "Organization unit was successfully created"
    click_on "Back"
  end

  test "should update Organization unit" do
    visit organization_unit_url(@organization_unit)
    click_on "Edit this organization unit", match: :first

    fill_in "Description", with: @organization_unit.description
    fill_in "Name", with: @organization_unit.name
    fill_in "Organization type", with: @organization_unit.organization_type_id
    click_on "Update Organization unit"

    assert_text "Organization unit was successfully updated"
    click_on "Back"
  end

  test "should destroy Organization unit" do
    visit organization_unit_url(@organization_unit)
    click_on "Destroy this organization unit", match: :first

    assert_text "Organization unit was successfully destroyed"
  end
end
