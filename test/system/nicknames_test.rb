require "application_system_test_case"

class NicknamesTest < ApplicationSystemTestCase
  setup do
    @nickname = nicknames(:one)
  end

  test "visiting the index" do
    visit nicknames_url
    assert_selector "h1", text: "Nicknames"
  end

  test "should create nickname" do
    visit nicknames_url
    click_on "New nickname"

    fill_in "Movie character", with: @nickname.movie_character_id
    fill_in "Name", with: @nickname.name
    click_on "Create Nickname"

    assert_text "Nickname was successfully created"
    click_on "Back"
  end

  test "should update Nickname" do
    visit nickname_url(@nickname)
    click_on "Edit this nickname", match: :first

    fill_in "Movie character", with: @nickname.movie_character_id
    fill_in "Name", with: @nickname.name
    click_on "Update Nickname"

    assert_text "Nickname was successfully updated"
    click_on "Back"
  end

  test "should destroy Nickname" do
    visit nickname_url(@nickname)
    click_on "Destroy this nickname", match: :first

    assert_text "Nickname was successfully destroyed"
  end
end
