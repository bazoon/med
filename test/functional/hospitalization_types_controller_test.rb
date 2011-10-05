require 'test_helper'

class HospitalizationTypesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @hospitalization_type = hospitalization_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitalization_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospitalization_type" do
    assert_difference('HospitalizationType.count') do
      post :create, hospitalization_type: @hospitalization_type.attributes
    end

    assert_redirected_to hospitalization_types_path
  end

  test "should show hospitalization_type" do
    get :show, id: @hospitalization_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospitalization_type.to_param
    assert_response :success
  end

  test "should update hospitalization_type" do
    put :update, id: @hospitalization_type.to_param, hospitalization_type: @hospitalization_type.attributes
    assert_redirected_to hospitalization_types_path
  end

  test "should destroy hospitalization_type" do
    assert_difference('HospitalizationType.count', -1) do
      delete :destroy, id: @hospitalization_type.to_param
    end

    assert_redirected_to hospitalization_types_path
  end
end
