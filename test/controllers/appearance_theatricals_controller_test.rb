require "test_helper"

class AppearanceTheatricalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appearance_theatrical = appearance_theatricals(:one)
  end

  test "should get index" do
    get appearance_theatricals_url
    assert_response :success
  end

  test "should get new" do
    get new_appearance_theatrical_url
    assert_response :success
  end

  test "should create appearance_theatrical" do
    assert_difference("AppearanceTheatrical.count") do
      post appearance_theatricals_url, params: { appearance_theatrical: { minute: @appearance_theatrical.minute, movie_id: @appearance_theatrical.movie_id, second: @appearance_theatrical.second } }
    end

    assert_redirected_to appearance_theatrical_url(AppearanceTheatrical.last)
  end

  test "should show appearance_theatrical" do
    get appearance_theatrical_url(@appearance_theatrical)
    assert_response :success
  end

  test "should get edit" do
    get edit_appearance_theatrical_url(@appearance_theatrical)
    assert_response :success
  end

  test "should update appearance_theatrical" do
    patch appearance_theatrical_url(@appearance_theatrical), params: { appearance_theatrical: { minute: @appearance_theatrical.minute, movie_id: @appearance_theatrical.movie_id, second: @appearance_theatrical.second } }
    assert_redirected_to appearance_theatrical_url(@appearance_theatrical)
  end

  test "should destroy appearance_theatrical" do
    assert_difference("AppearanceTheatrical.count", -1) do
      delete appearance_theatrical_url(@appearance_theatrical)
    end

    assert_redirected_to appearance_theatricals_url
  end
end
