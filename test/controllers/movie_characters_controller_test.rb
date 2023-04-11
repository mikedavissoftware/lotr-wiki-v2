require "test_helper"

class MovieCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_character = movie_characters(:one)
  end

  test "should get index" do
    get movie_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_character_url
    assert_response :success
  end

  test "should create movie_character" do
    assert_difference("MovieCharacter.count") do
      post movie_characters_url, params: { movie_character: { culture_id: @movie_character.culture_id, description: @movie_character.description, father: @movie_character.father, gender_id: @movie_character.gender_id, height: @movie_character.height, image_url: @movie_character.image_url, mother: @movie_character.mother, name: @movie_character.name, one_wiki_url: @movie_character.one_wiki_url, pronunciation: @movie_character.pronunciation, spouse: @movie_character.spouse, tolkien_wiki_url: @movie_character.tolkien_wiki_url } }
    end

    assert_redirected_to movie_character_url(MovieCharacter.last)
  end

  test "should show movie_character" do
    get movie_character_url(@movie_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_character_url(@movie_character)
    assert_response :success
  end

  test "should update movie_character" do
    patch movie_character_url(@movie_character), params: { movie_character: { culture_id: @movie_character.culture_id, description: @movie_character.description, father: @movie_character.father, gender_id: @movie_character.gender_id, height: @movie_character.height, image_url: @movie_character.image_url, mother: @movie_character.mother, name: @movie_character.name, one_wiki_url: @movie_character.one_wiki_url, pronunciation: @movie_character.pronunciation, spouse: @movie_character.spouse, tolkien_wiki_url: @movie_character.tolkien_wiki_url } }
    assert_redirected_to movie_character_url(@movie_character)
  end

  test "should destroy movie_character" do
    assert_difference("MovieCharacter.count", -1) do
      delete movie_character_url(@movie_character)
    end

    assert_redirected_to movie_characters_url
  end
end
