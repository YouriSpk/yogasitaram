require "test_helper"

class YogaStylesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yoga_styles_index_url
    assert_response :success
  end

  test "should get show" do
    get yoga_styles_show_url
    assert_response :success
  end

  test "should get new" do
    get yoga_styles_new_url
    assert_response :success
  end

  test "should get create" do
    get yoga_styles_create_url
    assert_response :success
  end

  test "should get edit" do
    get yoga_styles_edit_url
    assert_response :success
  end

  test "should get update" do
    get yoga_styles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get yoga_styles_destroy_url
    assert_response :success
  end
end
