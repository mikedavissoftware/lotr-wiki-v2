require "test_helper"

class ErasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @era = eras(:one)
  end

  test "should get index" do
    get eras_url
    assert_response :success
  end

  test "should get new" do
    get new_era_url
    assert_response :success
  end

  test "should create era" do
    assert_difference("Era.count") do
      post eras_url, params: { era: { name: @era.name } }
    end

    assert_redirected_to era_url(Era.last)
  end

  test "should show era" do
    get era_url(@era)
    assert_response :success
  end

  test "should get edit" do
    get edit_era_url(@era)
    assert_response :success
  end

  test "should update era" do
    patch era_url(@era), params: { era: { name: @era.name } }
    assert_redirected_to era_url(@era)
  end

  test "should destroy era" do
    assert_difference("Era.count", -1) do
      delete era_url(@era)
    end

    assert_redirected_to eras_url
  end
end
