require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      title: "MyString",
      content: "MyText",
      docs: nil
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input[name=?]", "document[title]"

      assert_select "textarea[name=?]", "document[content]"

      assert_select "input[name=?]", "document[docs]"
    end
  end
end
