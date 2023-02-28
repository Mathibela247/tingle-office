require 'rails_helper'

RSpec.describe "post_levels/edit", type: :view do
  before(:each) do
    @post_level = assign(:post_level, PostLevel.create!(
      level: 1
    ))
  end

  it "renders the edit post_level form" do
    render

    assert_select "form[action=?][method=?]", post_level_path(@post_level), "post" do

      assert_select "input[name=?]", "post_level[level]"
    end
  end
end
