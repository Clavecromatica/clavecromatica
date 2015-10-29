require 'test_helper'

class ArtistaControllerTest < ActionController::TestCase
  setup do
    @artistum = artista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artistum" do
    assert_difference('Artistum.count') do
      post :create, artistum: { descripcion: @artistum.descripcion, fecha_origen: @artistum.fecha_origen, nombre: @artistum.nombre, web: @artistum.web }
    end

    assert_redirected_to artistum_path(assigns(:artistum))
  end

  test "should show artistum" do
    get :show, id: @artistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artistum
    assert_response :success
  end

  test "should update artistum" do
    patch :update, id: @artistum, artistum: { descripcion: @artistum.descripcion, fecha_origen: @artistum.fecha_origen, nombre: @artistum.nombre, web: @artistum.web }
    assert_redirected_to artistum_path(assigns(:artistum))
  end

  test "should destroy artistum" do
    assert_difference('Artistum.count', -1) do
      delete :destroy, id: @artistum
    end

    assert_redirected_to artista_path
  end
end
