require 'test_helper'

class DiagramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diagrama_index_url
    assert_response :success
  end

end
