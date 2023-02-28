require 'rails_helper'

RSpec.describe "post_levels/index", type: :view do
  before(:each) do
    assign(:post_levels, [
      PostLevel.create!(
        level: 2
      ),
      PostLevel.create!(
        level: 2
      )
    ])
  end

  it "renders a list of post_levels" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
