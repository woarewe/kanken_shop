require 'test_helper'

class BackpacksControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get backpacks_update_url
    assert_response :success
  end

end
