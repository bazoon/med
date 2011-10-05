require 'test_helper'

class LabTestTypesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @lab_test_type = lab_test_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_test_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_test_type" do
    assert_difference('LabTestType.count') do
      post :create, lab_test_type: @lab_test_type.attributes
    end

    assert_redirected_to lab_test_types_path
  end

  test "should show lab_test_type" do
    get :show, id: @lab_test_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_test_type.to_param
    assert_response :success
  end

  test "should update lab_test_type" do
    put :update, id: @lab_test_type.to_param, lab_test_type: @lab_test_type.attributes
    assert_redirected_to lab_test_types_path
  end

  test "should destroy lab_test_type" do
    assert_difference('LabTestType.count', -1) do
      delete :destroy, id: @lab_test_type.to_param
    end

    assert_redirected_to lab_test_types_path
  end
end
