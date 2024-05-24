require "test_helper"

class HomePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get home_pages_show_url
    assert_response :success
  end

  test "should get new" do
    get home_pages_new_url
    assert_response :success
  end

  test "should get create" do
    get home_pages_create_url
    assert_response :success
  end

  test "should get edit" do
    get home_pages_edit_url
    assert_response :success
  end

  test "should get update" do
    get home_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get home_pages_destroy_url
    assert_response :success
  end
end
