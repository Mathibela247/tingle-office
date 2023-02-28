require 'rails_helper'

RSpec.describe "post_titles/show", type: :view do
  before(:each) do
    @post_title = assign(:post_title, PostTitle.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
