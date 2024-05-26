require "test_helper"

class CorporateOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get corporate_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get corporate_offers_show_url
    assert_response :success
  end

  test "should get new" do
    get corporate_offers_new_url
    assert_response :success
  end

  test "should get create" do
    get corporate_offers_create_url
    assert_response :success
  end

  test "should get edit" do
    get corporate_offers_edit_url
    assert_response :success
  end

  test "should get update" do
    get corporate_offers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get corporate_offers_destroy_url
    assert_response :success
  end
end
