require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get game_find_url
    assert_response :success
  end

end
