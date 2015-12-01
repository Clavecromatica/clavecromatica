require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get politica_privacidad" do
    get :politica_privacidad
    assert_response :success
  end

  test "should get politica_devoluciones" do
    get :politica_devoluciones
    assert_response :success
  end

  test "should get contactanos" do
    get :contactanos
    assert_response :success
  end

end
