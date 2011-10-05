require 'test_helper'

class InsCompaniesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @ins_company = ins_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ins_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ins_company" do
    assert_difference('InsCompany.count') do
      post :create, ins_company: @ins_company.attributes
    end

    assert_redirected_to ins_company_path(assigns(:ins_company))
  end

  test "should show ins_company" do
    get :show, id: @ins_company.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ins_company.to_param
    assert_response :success
  end

  test "should update ins_company" do
    put :update, id: @ins_company.to_param, ins_company: @ins_company.attributes
    assert_redirected_to ins_company_path(assigns(:ins_company))
  end

  test "should destroy ins_company" do
    assert_difference('InsCompany.count', -1) do
      delete :destroy, id: @ins_company.to_param
    end

    assert_redirected_to ins_companies_path
  end
end
