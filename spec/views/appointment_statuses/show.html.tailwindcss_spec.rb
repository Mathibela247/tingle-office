require 'rails_helper'

RSpec.describe "appointment_statuses/show", type: :view do
  before(:each) do
    @appointment_status = assign(:appointment_status, AppointmentStatus.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
