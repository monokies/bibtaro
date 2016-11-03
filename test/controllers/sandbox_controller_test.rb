require 'test_helper'

class SandboxControllerTest < ActionDispatch::IntegrationTest
  test "should get sample_www" do
    get sandbox_sample_www_url
    assert_response :success
  end

  test "should get sample_api" do
    get sandbox_sample_api_url
    assert_response :success
  end

end
