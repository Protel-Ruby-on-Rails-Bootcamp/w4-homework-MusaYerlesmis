require "test_helper"

class ContendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contends_index_url
    assert_response :success
  end

  test "should get show" do
    get contends_show_url
    assert_response :success
  end
end
