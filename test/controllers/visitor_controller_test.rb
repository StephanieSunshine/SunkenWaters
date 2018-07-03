require 'test_helper'

class VisitorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visitor_index_url
    assert_response :success
  end

  test "should get how_to_play" do
    get visitor_how_to_play_url
    assert_response :success
  end

end
