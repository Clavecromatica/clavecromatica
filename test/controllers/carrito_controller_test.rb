require 'test_helper'

class CarritoControllerTest < ActionController::TestCase
  test "should get carrito" do
    get :carrito
    assert_response :success
  end

end
