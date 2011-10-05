require 'test_helper'

class MedDiagnosticTestsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @med_diagnostic_test = med_diagnostic_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_diagnostic_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_diagnostic_test" do
    assert_difference('MedDiagnosticTest.count') do
      post :create, med_diagnostic_test: @med_diagnostic_test.attributes
    end

    assert_redirected_to med_diagnostic_test_path(assigns(:med_diagnostic_test))
  end

  test "should show med_diagnostic_test" do
    get :show, id: @med_diagnostic_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_diagnostic_test.to_param
    assert_response :success
  end

  test "should update med_diagnostic_test" do
    put :update, id: @med_diagnostic_test.to_param, med_diagnostic_test: @med_diagnostic_test.attributes
    assert_redirected_to med_diagnostic_test_path(assigns(:med_diagnostic_test))
  end

  test "should destroy med_diagnostic_test" do
    assert_difference('MedDiagnosticTest.count', -1) do
      delete :destroy, id: @med_diagnostic_test.to_param
    end

    assert_redirected_to med_diagnostic_tests_path
  end
end
