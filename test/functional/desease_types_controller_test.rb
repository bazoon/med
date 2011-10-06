require 'test_helper'

class DeseaseTypesControllerTest < ActionController::TestCase
  setup do
    @desease_type = desease_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desease_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desease_type" do
    assert_difference('DeseaseType.count') do
      post :create, desease_type: @desease_type.attributes
    end

    assert_redirected_to desease_types_path
  end

  test "should show desease_type" do
    get :show, id: @desease_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desease_type.to_param
    assert_response :success
  end

  test "should update desease_type" do
    put :update, id: @desease_type.to_param, desease_type: @desease_type.attributes
    assert_redirected_to desease_types_path
  end

  test "should destroy desease_type" do
    assert_difference('DeseaseType.count', -1) do
      delete :destroy, id: @desease_type.to_param
    end

    assert_redirected_to desease_types_path
  end
end
