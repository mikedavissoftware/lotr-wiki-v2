require "application_system_test_case"

class AppearanceTheatricalsTest < ApplicationSystemTestCase
  setup do
    @appearance_theatrical = appearance_theatricals(:one)
  end

  test "visiting the index" do
    visit appearance_theatricals_url
    assert_selector "h1", text: "Appearance theatricals"
  end

  test "should create appearance theatrical" do
    visit appearance_theatricals_url
    click_on "New appearance theatrical"

    fill_in "Minute", with: @appearance_theatrical.minute
    fill_in "Movie", with: @appearance_theatrical.movie_id
    fill_in "Second", with: @appearance_theatrical.second
    click_on "Create Appearance theatrical"

    assert_text "Appearance theatrical was successfully created"
    click_on "Back"
  end

  test "should update Appearance theatrical" do
    visit appearance_theatrical_url(@appearance_theatrical)
    click_on "Edit this appearance theatrical", match: :first

    fill_in "Minute", with: @appearance_theatrical.minute
    fill_in "Movie", with: @appearance_theatrical.movie_id
    fill_in "Second", with: @appearance_theatrical.second
    click_on "Update Appearance theatrical"

    assert_text "Appearance theatrical was successfully updated"
    click_on "Back"
  end

  test "should destroy Appearance theatrical" do
    visit appearance_theatrical_url(@appearance_theatrical)
    click_on "Destroy this appearance theatrical", match: :first

    assert_text "Appearance theatrical was successfully destroyed"
  end
end
