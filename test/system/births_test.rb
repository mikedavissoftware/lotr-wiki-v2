require "application_system_test_case"

class BirthsTest < ApplicationSystemTestCase
  setup do
    @birth = births(:one)
  end

  test "visiting the index" do
    visit births_url
    assert_selector "h1", text: "Births"
  end

  test "should create birth" do
    visit births_url
    click_on "New birth"

    fill_in "Era", with: @birth.era_id
    fill_in "Movie character", with: @birth.movie_character_id
    fill_in "Year", with: @birth.year
    click_on "Create Birth"

    assert_text "Birth was successfully created"
    click_on "Back"
  end

  test "should update Birth" do
    visit birth_url(@birth)
    click_on "Edit this birth", match: :first

    fill_in "Era", with: @birth.era_id
    fill_in "Movie character", with: @birth.movie_character_id
    fill_in "Year", with: @birth.year
    click_on "Update Birth"

    assert_text "Birth was successfully updated"
    click_on "Back"
  end

  test "should destroy Birth" do
    visit birth_url(@birth)
    click_on "Destroy this birth", match: :first

    assert_text "Birth was successfully destroyed"
  end
end
