require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      post_title: "MyString",
      post_name: "MyString",
      supervisor_id: 1,
      organization_unit_id: 1,
      post_level: 1
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[post_title]"

      assert_select "input[name=?]", "post[post_name]"

      assert_select "input[name=?]", "post[supervisor_id]"

      assert_select "input[name=?]", "post[organization_unit_id]"

      assert_select "input[name=?]", "post[post_level]"
    end
  end
end
