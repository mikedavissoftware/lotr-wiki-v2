require "application_system_test_case"

class DeathsTest < ApplicationSystemTestCase
  setup do
    @death = deaths(:one)
  end

  test "visiting the index" do
    visit deaths_url
    assert_selector "h1", text: "Deaths"
  end

  test "should create death" do
    visit deaths_url
    click_on "New death"

    fill_in "Age", with: @death.age
    fill_in "Era", with: @death.era_id
    fill_in "Movie character", with: @death.movie_character_id
    fill_in "Year", with: @death.year
    click_on "Create Death"

    assert_text "Death was successfully created"
    click_on "Back"
  end

  test "should update Death" do
    visit death_url(@death)
    click_on "Edit this death", match: :first

    fill_in "Age", with: @death.age
    fill_in "Era", with: @death.era_id
    fill_in "Movie character", with: @death.movie_character_id
    fill_in "Year", with: @death.year
    click_on "Update Death"

    assert_text "Death was successfully updated"
    click_on "Back"
  end

  test "should destroy Death" do
    visit death_url(@death)
    click_on "Destroy this death", match: :first

    assert_text "Death was successfully destroyed"
  end
end
