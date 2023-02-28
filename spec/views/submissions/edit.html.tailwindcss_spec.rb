require 'rails_helper'

RSpec.describe "submissions/edit", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
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

  it "renders the edit submission form" do
    render

    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do

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
