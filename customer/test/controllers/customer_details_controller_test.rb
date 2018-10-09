require 'test_helper'

class CustomerDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_details_index_url
    assert_response :success
  end

end
