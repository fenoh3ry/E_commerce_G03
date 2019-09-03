require 'test_helper'

class JoinTableCartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get join_table_cart_items_index_url
    assert_response :success
  end

  test "should get show" do
    get join_table_cart_items_show_url
    assert_response :success
  end

  test "should get new" do
    get join_table_cart_items_new_url
    assert_response :success
  end

  test "should get create" do
    get join_table_cart_items_create_url
    assert_response :success
  end

  test "should get update" do
    get join_table_cart_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get join_table_cart_items_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get join_table_cart_items_edit_url
    assert_response :success
  end

end
