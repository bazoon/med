require 'test_helper'

class HtmHelpTypesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @htm_help_type = htm_help_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:htm_help_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create htm_help_type" do
    assert_difference('HtmHelpType.count') do
      post :create, htm_help_type: @htm_help_type.attributes
    end

    assert_redirected_to htm_help_types_path
  end

  test "should show htm_help_type" do
    get :show, id: @htm_help_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @htm_help_type.to_param
    assert_response :success
  end

  test "should update htm_help_type" do
    put :update, id: @htm_help_type.to_param, htm_help_type: @htm_help_type.attributes
    assert_redirected_to htm_help_types_path
  end

  test "should destroy htm_help_type" do
    assert_difference('HtmHelpType.count', -1) do
      delete :destroy, id: @htm_help_type.to_param
    end

    assert_redirected_to htm_help_types_path
  end
end
