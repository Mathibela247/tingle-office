require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        post_id: 2,
        user_id: 3,
        appointment_status_id: 4,
        isactive: false
      ),
      Appointment.create!(
        post_id: 2,
        user_id: 3,
        appointment_status_id: 4,
        isactive: false
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
