require "application_system_test_case"

class MovieCharactersTest < ApplicationSystemTestCase
  setup do
    @movie_character = movie_characters(:one)
  end

  test "visiting the index" do
    visit movie_characters_url
    assert_selector "h1", text: "Movie characters"
  end

  test "should create movie character" do
    visit movie_characters_url
    click_on "New movie character"

    fill_in "Culture", with: @movie_character.culture_id
    fill_in "Description", with: @movie_character.description
    fill_in "Father", with: @movie_character.father
    fill_in "Gender", with: @movie_character.gender_id
    fill_in "Height", with: @movie_character.height
    fill_in "Image url", with: @movie_character.image_url
    fill_in "Mother", with: @movie_character.mother
    fill_in "Name", with: @movie_character.name
    fill_in "One wiki url", with: @movie_character.one_wiki_url
    fill_in "Pronunciation", with: @movie_character.pronunciation
    fill_in "Spouse", with: @movie_character.spouse
    fill_in "Tolkien wiki url", with: @movie_character.tolkien_wiki_url
    click_on "Create Movie character"

    assert_text "Movie character was successfully created"
    click_on "Back"
  end

  test "should update Movie character" do
    visit movie_character_url(@movie_character)
    click_on "Edit this movie character", match: :first

    fill_in "Culture", with: @movie_character.culture_id
    fill_in "Description", with: @movie_character.description
    fill_in "Father", with: @movie_character.father
    fill_in "Gender", with: @movie_character.gender_id
    fill_in "Height", with: @movie_character.height
    fill_in "Image url", with: @movie_character.image_url
    fill_in "Mother", with: @movie_character.mother
    fill_in "Name", with: @movie_character.name
    fill_in "One wiki url", with: @movie_character.one_wiki_url
    fill_in "Pronunciation", with: @movie_character.pronunciation
    fill_in "Spouse", with: @movie_character.spouse
    fill_in "Tolkien wiki url", with: @movie_character.tolkien_wiki_url
    click_on "Update Movie character"

    assert_text "Movie character was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie character" do
    visit movie_character_url(@movie_character)
    click_on "Destroy this movie character", match: :first

    assert_text "Movie character was successfully destroyed"
  end
end
