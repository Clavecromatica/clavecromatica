require 'test_helper'

class CancionsControllerTest < ActionController::TestCase
  setup do
    @cancion = cancions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancion" do
    assert_difference('Cancion.count') do
      post :create, cancion: { disco: @cancion.disco, duracion: @cancion.duracion, nombre: @cancion.nombre, precio: @cancion.precio }
    end

    assert_redirected_to cancion_path(assigns(:cancion))
  end

  test "should show cancion" do
    get :show, id: @cancion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancion
    assert_response :success
  end

  test "should update cancion" do
    patch :update, id: @cancion, cancion: { disco: @cancion.disco, duracion: @cancion.duracion, nombre: @cancion.nombre, precio: @cancion.precio }
    assert_redirected_to cancion_path(assigns(:cancion))
  end

  test "should destroy cancion" do
    assert_difference('Cancion.count', -1) do
      delete :destroy, id: @cancion
    end

    assert_redirected_to cancions_path
  end
end
