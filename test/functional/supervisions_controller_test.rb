require 'test_helper'

class SupervisionsControllerTest < ActionController::TestCase
  setup do
    @supervision = supervisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supervisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supervision" do
    assert_difference('Supervision.count') do
      post :create, :supervision => @supervision.attributes
    end

    assert_redirected_to supervision_path(assigns(:supervision))
  end

  test "should show supervision" do
    get :show, :id => @supervision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @supervision.to_param
    assert_response :success
  end

  test "should update supervision" do
    put :update, :id => @supervision.to_param, :supervision => @supervision.attributes
    assert_redirected_to supervision_path(assigns(:supervision))
  end

  test "should destroy supervision" do
    assert_difference('Supervision.count', -1) do
      delete :destroy, :id => @supervision.to_param
    end

    assert_redirected_to supervisions_path
  end
end
