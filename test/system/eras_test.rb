require "application_system_test_case"

class ErasTest < ApplicationSystemTestCase
  setup do
    @era = eras(:one)
  end

  test "visiting the index" do
    visit eras_url
    assert_selector "h1", text: "Eras"
  end

  test "should create era" do
    visit eras_url
    click_on "New era"

    fill_in "Name", with: @era.name
    click_on "Create Era"

    assert_text "Era was successfully created"
    click_on "Back"
  end

  test "should update Era" do
    visit era_url(@era)
    click_on "Edit this era", match: :first

    fill_in "Name", with: @era.name
    click_on "Update Era"

    assert_text "Era was successfully updated"
    click_on "Back"
  end

  test "should destroy Era" do
    visit era_url(@era)
    click_on "Destroy this era", match: :first

    assert_text "Era was successfully destroyed"
  end
end
