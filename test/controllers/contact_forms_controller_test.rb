require "test_helper"

class ContactFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_forms_index_url
    assert_response :success
  end

  test "should get show" do
    get contact_forms_show_url
    assert_response :success
  end

  test "should get new" do
    get contact_forms_new_url
    assert_response :success
  end

  test "should get create" do
    get contact_forms_create_url
    assert_response :success
  end

  test "should get edit" do
    get contact_forms_edit_url
    assert_response :success
  end

  test "should get update" do
    get contact_forms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contact_forms_destroy_url
    assert_response :success
  end
end
