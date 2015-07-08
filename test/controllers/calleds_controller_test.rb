require 'test_helper'

class CalledsControllerTest < ActionController::TestCase
  setup do
    @called = calleds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calleds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create called" do
    assert_difference('Called.count') do
      post :create, called: { data: @called.data, descricao: @called.descricao, identificador: @called.identificador, system_id: @called.system_id, tipo: @called.tipo }
    end

    assert_redirected_to called_path(assigns(:called))
  end

  test "should show called" do
    get :show, id: @called
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @called
    assert_response :success
  end

  test "should update called" do
    patch :update, id: @called, called: { data: @called.data, descricao: @called.descricao, identificador: @called.identificador, system_id: @called.system_id, tipo: @called.tipo }
    assert_redirected_to called_path(assigns(:called))
  end

  test "should destroy called" do
    assert_difference('Called.count', -1) do
      delete :destroy, id: @called
    end

    assert_redirected_to calleds_path
  end
end
