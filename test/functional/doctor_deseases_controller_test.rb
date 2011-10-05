require 'test_helper'

class DoctorDeseasesControllerTest < ActionController::TestCase
  setup do
    @doctor_desease = doctor_deseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_deseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_desease" do
    assert_difference('DoctorDesease.count') do
      post :create, doctor_desease: @doctor_desease.attributes
    end

    assert_redirected_to doctor_deseases_path
  end

  test "should show doctor_desease" do
    get :show, id: @doctor_desease.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_desease.to_param
    assert_response :success
  end

  test "should update doctor_desease" do
    put :update, id: @doctor_desease.to_param, doctor_desease: @doctor_desease.attributes
    assert_redirected_to doctor_deseases_path
  end

  test "should destroy doctor_desease" do
    assert_difference('DoctorDesease.count', -1) do
      delete :destroy, id: @doctor_desease.to_param
    end

    assert_redirected_to doctor_deseases_path
  end
end
