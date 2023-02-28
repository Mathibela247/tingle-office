require 'rails_helper'

RSpec.describe "appointment_statuses/edit", type: :view do
  before(:each) do
    @appointment_status = assign(:appointment_status, AppointmentStatus.create!(
      name: "MyString"
    ))
  end

  it "renders the edit appointment_status form" do
    render

    assert_select "form[action=?][method=?]", appointment_status_path(@appointment_status), "post" do

      assert_select "input[name=?]", "appointment_status[name]"
    end
  end
end
