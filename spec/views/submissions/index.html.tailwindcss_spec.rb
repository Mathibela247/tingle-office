require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        title: "Title",
        purpose: "MyText",
        background: "MyText",
        discussion: "MyText",
        communication: "MyText",
        legal: "MyText",
        human_resource: "MyText",
        financial: "MyText",
        recommendation: "MyText"
      ),
      Submission.create!(
        title: "Title",
        purpose: "MyText",
        background: "MyText",
        discussion: "MyText",
        communication: "MyText",
        legal: "MyText",
        human_resource: "MyText",
        financial: "MyText",
        recommendation: "MyText"
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
