require 'test_helper'

class MedDiagnosticTestTypesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @med_diagnostic_test_type = med_diagnostic_test_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_diagnostic_test_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_diagnostic_test_type" do
    assert_difference('MedDiagnosticTestType.count') do
      post :create, med_diagnostic_test_type: @med_diagnostic_test_type.attributes
    end

    assert_redirected_to med_diagnostic_test_types_path
  end

  test "should show med_diagnostic_test_type" do
    get :show, id: @med_diagnostic_test_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_diagnostic_test_type.to_param
    assert_response :success
  end

  test "should update med_diagnostic_test_type" do
    put :update, id: @med_diagnostic_test_type.to_param, med_diagnostic_test_type: @med_diagnostic_test_type.attributes
    assert_redirected_to med_diagnostic_test_types_path
  end

  test "should destroy med_diagnostic_test_type" do
    assert_difference('MedDiagnosticTestType.count', -1) do
      delete :destroy, id: @med_diagnostic_test_type.to_param
    end

    assert_redirected_to med_diagnostic_test_types_path
  end
end
