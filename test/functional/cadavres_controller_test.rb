require 'test_helper'

class CadavresControllerTest < ActionController::TestCase
  setup do
    @cadavre = cadavres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadavres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadavre" do
    assert_difference('Cadavre.count') do
      post :create, :cadavre => { :content => @cadavre.content, :title => @cadavre.title }
    end

    assert_redirected_to cadavre_path(assigns(:cadavre))
  end

  test "should show cadavre" do
    get :show, :id => @cadavre
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cadavre
    assert_response :success
  end

  test "should update cadavre" do
    put :update, :id => @cadavre, :cadavre => { :content => @cadavre.content, :title => @cadavre.title }
    assert_redirected_to cadavre_path(assigns(:cadavre))
  end

  test "should destroy cadavre" do
    assert_difference('Cadavre.count', -1) do
      delete :destroy, :id => @cadavre
    end

    assert_redirected_to cadavres_path
  end
end
