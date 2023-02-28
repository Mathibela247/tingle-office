require 'rails_helper'

RSpec.describe "post_levels/show", type: :view do
  before(:each) do
    @post_level = assign(:post_level, PostLevel.create!(
      level: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
