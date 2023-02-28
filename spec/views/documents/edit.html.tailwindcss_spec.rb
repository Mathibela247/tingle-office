require 'rails_helper'

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      title: "MyString",
      content: "MyText",
      docs: nil
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input[name=?]", "document[title]"

      assert_select "textarea[name=?]", "document[content]"

      assert_select "input[name=?]", "document[docs]"
    end
  end
end
