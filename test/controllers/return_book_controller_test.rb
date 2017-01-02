require 'test_helper'

class ReturnBookControllerTest < ActionDispatch::IntegrationTest
  # test "should get return_api" do
  #   post return_book_return_api_url, bookId: '00000000'
  #   assert_response :success
  # end

  test "return_api success pattern" do
    puts '成功ケースのテスト'
    post return_book_return_api_url, params: {bookId: '12345678'}
    assert_response :success
  end

  test "return_api failure pattern" do
    puts '失敗ケースのテスト'
    post return_book_return_api_url, params: {bookId: '00000000'}
    assert_response :bad_request
  end

end
