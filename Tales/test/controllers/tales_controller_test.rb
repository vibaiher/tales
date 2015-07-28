require 'test_helper'

class TalesControllerTest < ActionController::TestCase
  setup do
    @tale = tales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tale" do
    assert_difference('Tale.count') do
      post :create, tale: { author: @tale.author, body: @tale.body, published: @tale.published, title: @tale.title }
    end

    assert_redirected_to tale_path(assigns(:tale))
  end

  test "should show tale" do
    get :show, id: @tale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tale
    assert_response :success
  end

  test "should update tale" do
    patch :update, id: @tale, tale: { author: @tale.author, body: @tale.body, published: @tale.published, title: @tale.title }
    assert_redirected_to tale_path(assigns(:tale))
  end

  test "should destroy tale" do
    assert_difference('Tale.count', -1) do
      delete :destroy, id: @tale
    end

    assert_redirected_to tales_path
  end
end
