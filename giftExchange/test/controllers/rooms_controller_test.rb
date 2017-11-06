require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get rooms_login_url
    assert_response :success
  end

end
