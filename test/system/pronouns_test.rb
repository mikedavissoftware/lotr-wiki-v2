require "application_system_test_case"

class PronounsTest < ApplicationSystemTestCase
  setup do
    @pronoun = pronouns(:one)
  end

  test "visiting the index" do
    visit pronouns_url
    assert_selector "h1", text: "Pronouns"
  end

  test "should create pronoun" do
    visit pronouns_url
    click_on "New pronoun"

    fill_in "Gender", with: @pronoun.gender_id
    fill_in "Name", with: @pronoun.name
    click_on "Create Pronoun"

    assert_text "Pronoun was successfully created"
    click_on "Back"
  end

  test "should update Pronoun" do
    visit pronoun_url(@pronoun)
    click_on "Edit this pronoun", match: :first

    fill_in "Gender", with: @pronoun.gender_id
    fill_in "Name", with: @pronoun.name
    click_on "Update Pronoun"

    assert_text "Pronoun was successfully updated"
    click_on "Back"
  end

  test "should destroy Pronoun" do
    visit pronoun_url(@pronoun)
    click_on "Destroy this pronoun", match: :first

    assert_text "Pronoun was successfully destroyed"
  end
end
