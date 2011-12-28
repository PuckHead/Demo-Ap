require 'test_helper'

class MicrospostsControllerTest < ActionController::TestCase
  setup do
    @microspost = microsposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microsposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microspost" do
    assert_difference('Microspost.count') do
      post :create, :microspost => @microspost.attributes
    end

    assert_redirected_to microspost_path(assigns(:microspost))
  end

  test "should show microspost" do
    get :show, :id => @microspost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @microspost.to_param
    assert_response :success
  end

  test "should update microspost" do
    put :update, :id => @microspost.to_param, :microspost => @microspost.attributes
    assert_redirected_to microspost_path(assigns(:microspost))
  end

  test "should destroy microspost" do
    assert_difference('Microspost.count', -1) do
      delete :destroy, :id => @microspost.to_param
    end

    assert_redirected_to microsposts_path
  end
end
