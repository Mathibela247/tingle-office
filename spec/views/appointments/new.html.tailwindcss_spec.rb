require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      post_id: 1,
      user_id: 1,
      appointment_status_id: 1,
      isactive: false
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input[name=?]", "appointment[post_id]"

      assert_select "input[name=?]", "appointment[user_id]"

      assert_select "input[name=?]", "appointment[appointment_status_id]"

      assert_select "input[name=?]", "appointment[isactive]"
    end
  end
end
