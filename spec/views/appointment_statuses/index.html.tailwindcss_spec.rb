require 'rails_helper'

RSpec.describe "appointment_statuses/index", type: :view do
  before(:each) do
    assign(:appointment_statuses, [
      AppointmentStatus.create!(
        name: "Name"
      ),
      AppointmentStatus.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of appointment_statuses" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
