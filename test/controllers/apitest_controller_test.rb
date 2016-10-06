require 'test_helper'

class ApitestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apitest_index_url
    assert_response :success
  end

end
