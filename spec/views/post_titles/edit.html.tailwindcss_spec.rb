require 'rails_helper'

RSpec.describe "post_titles/edit", type: :view do
  before(:each) do
    @post_title = assign(:post_title, PostTitle.create!(
      name: "MyString"
    ))
  end

  it "renders the edit post_title form" do
    render

    assert_select "form[action=?][method=?]", post_title_path(@post_title), "post" do

      assert_select "input[name=?]", "post_title[name]"
    end
  end
end
