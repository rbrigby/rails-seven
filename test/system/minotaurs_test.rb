require "application_system_test_case"

class MinotaursTest < ApplicationSystemTestCase
  setup do
    @minotaur = minotaurs(:one)
  end

  test "visiting the index" do
    visit minotaurs_url
    assert_selector "h1", text: "Minotaurs"
  end

  test "should create minotaur" do
    visit minotaurs_url
    click_on "New minotaur"

    click_on "Create Minotaur"

    assert_text "Minotaur was successfully created"
    click_on "Back"
  end

  test "should update Minotaur" do
    visit minotaur_url(@minotaur)
    click_on "Edit this minotaur", match: :first

    click_on "Update Minotaur"

    assert_text "Minotaur was successfully updated"
    click_on "Back"
  end

  test "should destroy Minotaur" do
    visit minotaur_url(@minotaur)
    click_on "Destroy this minotaur", match: :first

    assert_text "Minotaur was successfully destroyed"
  end
end
