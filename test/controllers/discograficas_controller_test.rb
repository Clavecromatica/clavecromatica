require 'test_helper'

class DiscograficasControllerTest < ActionController::TestCase
  setup do
    @discografica = discograficas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discograficas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discografica" do
    assert_difference('Discografica.count') do
      post :create, discografica: { descripcion: @discografica.descripcion, nombre: @discografica.nombre }
    end

    assert_redirected_to discografica_path(assigns(:discografica))
  end

  test "should show discografica" do
    get :show, id: @discografica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discografica
    assert_response :success
  end

  test "should update discografica" do
    patch :update, id: @discografica, discografica: { descripcion: @discografica.descripcion, nombre: @discografica.nombre }
    assert_redirected_to discografica_path(assigns(:discografica))
  end

  test "should destroy discografica" do
    assert_difference('Discografica.count', -1) do
      delete :destroy, id: @discografica
    end

    assert_redirected_to discograficas_path
  end
end
