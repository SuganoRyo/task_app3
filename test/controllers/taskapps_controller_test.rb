require "test_helper"

class TaskappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get taskapps_index_url
    assert_response :success
  end
end
