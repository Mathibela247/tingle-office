require 'rails_helper'

RSpec.describe "appointment_statuses/new", type: :view do
  before(:each) do
    assign(:appointment_status, AppointmentStatus.new(
      name: "MyString"
    ))
  end

  it "renders new appointment_status form" do
    render

    assert_select "form[action=?][method=?]", appointment_statuses_path, "post" do

      assert_select "input[name=?]", "appointment_status[name]"
    end
  end
end
