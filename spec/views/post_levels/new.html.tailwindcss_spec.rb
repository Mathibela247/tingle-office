require 'rails_helper'

RSpec.describe "post_levels/new", type: :view do
  before(:each) do
    assign(:post_level, PostLevel.new(
      level: 1
    ))
  end

  it "renders new post_level form" do
    render

    assert_select "form[action=?][method=?]", post_levels_path, "post" do

      assert_select "input[name=?]", "post_level[level]"
    end
  end
end
