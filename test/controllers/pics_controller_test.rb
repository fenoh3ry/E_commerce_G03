require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pics_new_url
    assert_response :success
  end

  test "should get create" do
    get pics_create_url
    assert_response :success
  end

  test "should get index" do
    get pics_index_url
    assert_response :success
  end

  test "should get show" do
    get pics_show_url
    assert_response :success
  end

  test "should get update" do
    get pics_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pics_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get pics_edit_url
    assert_response :success
  end

end
