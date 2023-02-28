require "application_system_test_case"

class SubmissionsTest < ApplicationSystemTestCase
  setup do
    @submission = submissions(:first)
  end

  test "Showing a submission" do
    visit submissions_path
    click_link @submission.title

    assert_selector "h1", text: @submission.title
  end

  test "Creating a new submission" do
    visit submissions_path
    assert_selector "h1", text: "Submissions"

    click_on "New submission"
    fill_in "Title", with: "Capybara submission"

    assert_selector "h1", text: "Submissions"
    click_on "Create submission"

    assert_selector "h1", text: "Submissions"
    assert_text "Capybara submission"
  end

  test "Updating a submission" do
    visit submissions_path
    assert_selector "h1", text: "Submissions"

    click_on "Edit", match: :first
    fill_in "Title", with: "Updated submission"

    assert_selector "h1", text: "Submissions"
    click_on "Update submission"

    assert_selector "h1", text: "Submissions"
    assert_text "Updated submission"
  end

  test "Destroying a submission" do
    visit submissions_path
    assert_text @submission.title

    click_on "Delete", match: :first
    assert_no_text @submission.title
  end
end