require "application_system_test_case"

class BelongsTest < ApplicationSystemTestCase
  setup do
    @belong = belongs(:one)
  end

  test "visiting the index" do
    visit belongs_url
    assert_selector "h1", text: "Belongs"
  end

  test "creating a Belong" do
    visit belongs_url
    click_on "New Belong"

    fill_in "Name", with: @belong.name
    click_on "Create Belong"

    assert_text "Belong was successfully created"
    click_on "Back"
  end

  test "updating a Belong" do
    visit belongs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @belong.name
    click_on "Update Belong"

    assert_text "Belong was successfully updated"
    click_on "Back"
  end

  test "destroying a Belong" do
    visit belongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Belong was successfully destroyed"
  end
end
