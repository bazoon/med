require 'test_helper'

class DiagnosticTestTypesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @diagnostic_test_type = diagnostic_test_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnostic_test_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnostic_test_type" do
    assert_difference('DiagnosticTestType.count') do
      post :create, diagnostic_test_type: @diagnostic_test_type.attributes
    end

    assert_redirected_to diagnostic_test_types_path
  end

  test "should show diagnostic_test_type" do
    get :show, id: @diagnostic_test_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnostic_test_type.to_param
    assert_response :success
  end

  test "should update diagnostic_test_type" do
    put :update, id: @diagnostic_test_type.to_param, diagnostic_test_type: @diagnostic_test_type.attributes
    assert_redirected_to diagnostic_test_types_path
  end

  test "should destroy diagnostic_test_type" do
    assert_difference('DiagnosticTestType.count', -1) do
      delete :destroy, id: @diagnostic_test_type.to_param
    end

    assert_redirected_to diagnostic_test_types_path
  end
end
