require "test_helper"

class AppearanceExtendedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appearance_extended = appearance_extendeds(:one)
  end

  test "should get index" do
    get appearance_extendeds_url
    assert_response :success
  end

  test "should get new" do
    get new_appearance_extended_url
    assert_response :success
  end

  test "should create appearance_extended" do
    assert_difference("AppearanceExtended.count") do
      post appearance_extendeds_url, params: { appearance_extended: { minute: @appearance_extended.minute, movie_id: @appearance_extended.movie_id, second: @appearance_extended.second } }
    end

    assert_redirected_to appearance_extended_url(AppearanceExtended.last)
  end

  test "should show appearance_extended" do
    get appearance_extended_url(@appearance_extended)
    assert_response :success
  end

  test "should get edit" do
    get edit_appearance_extended_url(@appearance_extended)
    assert_response :success
  end

  test "should update appearance_extended" do
    patch appearance_extended_url(@appearance_extended), params: { appearance_extended: { minute: @appearance_extended.minute, movie_id: @appearance_extended.movie_id, second: @appearance_extended.second } }
    assert_redirected_to appearance_extended_url(@appearance_extended)
  end

  test "should destroy appearance_extended" do
    assert_difference("AppearanceExtended.count", -1) do
      delete appearance_extended_url(@appearance_extended)
    end

    assert_redirected_to appearance_extendeds_url
  end
end
