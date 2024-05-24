require "test_helper"

class PreNatalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pre_natals_index_url
    assert_response :success
  end

  test "should get show" do
    get pre_natals_show_url
    assert_response :success
  end

  test "should get new" do
    get pre_natals_new_url
    assert_response :success
  end

  test "should get create" do
    get pre_natals_create_url
    assert_response :success
  end

  test "should get edit" do
    get pre_natals_edit_url
    assert_response :success
  end

  test "should get update" do
    get pre_natals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pre_natals_destroy_url
    assert_response :success
  end
end
