require 'rails_helper'

RSpec.describe "post_titles/index", type: :view do
  before(:each) do
    assign(:post_titles, [
      PostTitle.create!(
        name: "Name"
      ),
      PostTitle.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of post_titles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
