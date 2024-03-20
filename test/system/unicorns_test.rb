require "application_system_test_case"

class UnicornsTest < ApplicationSystemTestCase
  setup do
    @unicorn = unicorns(:one)
  end

  test "visiting the index" do
    visit unicorns_url
    assert_selector "h1", text: "Unicorns"
  end

  test "should create unicorn" do
    visit unicorns_url
    click_on "New unicorn"

    click_on "Create Unicorn"

    assert_text "Unicorn was successfully created"
    click_on "Back"
  end

  test "should update Unicorn" do
    visit unicorn_url(@unicorn)
    click_on "Edit this unicorn", match: :first

    click_on "Update Unicorn"

    assert_text "Unicorn was successfully updated"
    click_on "Back"
  end

  test "should destroy Unicorn" do
    visit unicorn_url(@unicorn)
    click_on "Destroy this unicorn", match: :first

    assert_text "Unicorn was successfully destroyed"
  end
end
