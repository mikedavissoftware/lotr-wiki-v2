require "application_system_test_case"

class AppearanceExtendedsTest < ApplicationSystemTestCase
  setup do
    @appearance_extended = appearance_extendeds(:one)
  end

  test "visiting the index" do
    visit appearance_extendeds_url
    assert_selector "h1", text: "Appearance extendeds"
  end

  test "should create appearance extended" do
    visit appearance_extendeds_url
    click_on "New appearance extended"

    fill_in "Minute", with: @appearance_extended.minute
    fill_in "Movie", with: @appearance_extended.movie_id
    fill_in "Second", with: @appearance_extended.second
    click_on "Create Appearance extended"

    assert_text "Appearance extended was successfully created"
    click_on "Back"
  end

  test "should update Appearance extended" do
    visit appearance_extended_url(@appearance_extended)
    click_on "Edit this appearance extended", match: :first

    fill_in "Minute", with: @appearance_extended.minute
    fill_in "Movie", with: @appearance_extended.movie_id
    fill_in "Second", with: @appearance_extended.second
    click_on "Update Appearance extended"

    assert_text "Appearance extended was successfully updated"
    click_on "Back"
  end

  test "should destroy Appearance extended" do
    visit appearance_extended_url(@appearance_extended)
    click_on "Destroy this appearance extended", match: :first

    assert_text "Appearance extended was successfully destroyed"
  end
end
