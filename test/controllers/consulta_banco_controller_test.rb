require 'test_helper'

class ConsultaBancoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consulta_banco_index_url
    assert_response :success
  end

end
