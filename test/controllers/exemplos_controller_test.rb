require 'test_helper'

class ExemplosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exemplos_index_url
    assert_response :success
  end

end
