require 'test_helper'

class NewspapersControllerTest < ActionController::TestCase
  setup do
    @newspaper = newspapers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newspapers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newspaper" do
    assert_difference('Newspaper.count') do
      post :create, newspaper: { address: @newspaper.address, amount: @newspaper.amount, description: @newspaper.description, name: @newspaper.name }
    end

    assert_redirected_to newspaper_path(assigns(:newspaper))
  end

  test "should show newspaper" do
    get :show, id: @newspaper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newspaper
    assert_response :success
  end

  test "should update newspaper" do
    patch :update, id: @newspaper, newspaper: { address: @newspaper.address, amount: @newspaper.amount, description: @newspaper.description, name: @newspaper.name }
    assert_redirected_to newspaper_path(assigns(:newspaper))
  end

  test "should destroy newspaper" do
    assert_difference('Newspaper.count', -1) do
      delete :destroy, id: @newspaper
    end

    assert_redirected_to newspapers_path
  end
end
