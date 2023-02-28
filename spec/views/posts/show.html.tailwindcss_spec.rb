require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      post_title: "Post Title",
      post_name: "Post Name",
      supervisor_id: 2,
      organization_unit_id: 3,
      post_level: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Post Title/)
    expect(rendered).to match(/Post Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
