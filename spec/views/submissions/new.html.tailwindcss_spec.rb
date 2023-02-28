require 'rails_helper'

RSpec.describe "submissions/new", type: :view do
  before(:each) do
    assign(:submission, Submission.new(
      title: "MyString",
      purpose: "MyText",
      background: "MyText",
      discussion: "MyText",
      communication: "MyText",
      legal: "MyText",
      human_resource: "MyText",
      financial: "MyText",
      recommendation: "MyText"
    ))
  end

  it "renders new submission form" do
    render

    assert_select "form[action=?][method=?]", submissions_path, "post" do

      assert_select "input[name=?]", "submission[title]"

      assert_select "textarea[name=?]", "submission[purpose]"

      assert_select "textarea[name=?]", "submission[background]"

      assert_select "textarea[name=?]", "submission[discussion]"

      assert_select "textarea[name=?]", "submission[communication]"

      assert_select "textarea[name=?]", "submission[legal]"

      assert_select "textarea[name=?]", "submission[human_resource]"

      assert_select "textarea[name=?]", "submission[financial]"

      assert_select "textarea[name=?]", "submission[recommendation]"
    end
  end
end
