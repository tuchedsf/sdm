require 'test_helper'

class KnowledgesControllerTest < ActionController::TestCase
  setup do
    @knowledge = knowledges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowledges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowledge" do
    assert_difference('Knowledge.count') do
      post :create, knowledge: { descricao: @knowledge.descricao, system_id: @knowledge.system_id, titulo: @knowledge.titulo, user_id: @knowledge.user_id }
    end

    assert_redirected_to knowledge_path(assigns(:knowledge))
  end

  test "should show knowledge" do
    get :show, id: @knowledge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knowledge
    assert_response :success
  end

  test "should update knowledge" do
    patch :update, id: @knowledge, knowledge: { descricao: @knowledge.descricao, system_id: @knowledge.system_id, titulo: @knowledge.titulo, user_id: @knowledge.user_id }
    assert_redirected_to knowledge_path(assigns(:knowledge))
  end

  test "should destroy knowledge" do
    assert_difference('Knowledge.count', -1) do
      delete :destroy, id: @knowledge
    end

    assert_redirected_to knowledges_path
  end
end
