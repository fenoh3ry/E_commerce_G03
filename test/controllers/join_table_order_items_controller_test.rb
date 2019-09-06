require 'test_helper'

class JoinTableOrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get join_table_order_items_create_url
    assert_response :success
  end

end
