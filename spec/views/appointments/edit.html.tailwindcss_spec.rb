require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      post_id: 1,
      user_id: 1,
      appointment_status_id: 1,
      isactive: false
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input[name=?]", "appointment[post_id]"

      assert_select "input[name=?]", "appointment[user_id]"

      assert_select "input[name=?]", "appointment[appointment_status_id]"

      assert_select "input[name=?]", "appointment[isactive]"
    end
  end
end
