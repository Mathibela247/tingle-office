require 'rails_helper'

RSpec.describe "post_titles/new", type: :view do
  before(:each) do
    assign(:post_title, PostTitle.new(
      name: "MyString"
    ))
  end

  it "renders new post_title form" do
    render

    assert_select "form[action=?][method=?]", post_titles_path, "post" do

      assert_select "input[name=?]", "post_title[name]"
    end
  end
end
