require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        post_title: "Post Title",
        post_name: "Post Name",
        supervisor_id: 2,
        organization_unit_id: 3,
        post_level: 4
      ),
      Post.create!(
        post_title: "Post Title",
        post_name: "Post Name",
        supervisor_id: 2,
        organization_unit_id: 3,
        post_level: 4
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Post Title".to_s, count: 2
    assert_select "tr>td", text: "Post Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
