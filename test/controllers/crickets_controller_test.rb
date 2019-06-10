require 'test_helper'

class CricketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crickets_index_url
    assert_response :success
  end

end
