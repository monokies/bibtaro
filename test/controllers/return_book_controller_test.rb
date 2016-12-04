require 'test_helper'

class ReturnBookControllerTest < ActionDispatch::IntegrationTest
  test "should get return_api" do
    post return_book_return_api_url
    assert_response :success
  end

end
