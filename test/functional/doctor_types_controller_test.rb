require 'test_helper'

class DoctorTypesControllerTest < ActionController::TestCase
  setup do
    @doctor_type = doctor_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_type" do
    assert_difference('DoctorType.count') do
      post :create, doctor_type: @doctor_type.attributes
    end

    assert_redirected_to doctor_type_path(assigns(:doctor_type))
  end

  test "should show doctor_type" do
    get :show, id: @doctor_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_type.to_param
    assert_response :success
  end

  test "should update doctor_type" do
    put :update, id: @doctor_type.to_param, doctor_type: @doctor_type.attributes
    assert_redirected_to doctor_type_path(assigns(:doctor_type))
  end

  test "should destroy doctor_type" do
    assert_difference('DoctorType.count', -1) do
      delete :destroy, id: @doctor_type.to_param
    end

    assert_redirected_to doctor_types_path
  end
end
