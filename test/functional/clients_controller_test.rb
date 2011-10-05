require 'test_helper'

class ClientsControllerTest < ActionController::TestCase  
  include Devise::TestHelpers

  setup do
    @client = clients(:one)

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: @client.attributes
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client.to_param
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client.to_param, client: {:name =>"David", :surname => "SSS",:birth_date => '01.01.2010',:ins_company_id => 1,:client_sex_id => 1 }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client.to_param
    end

    assert_redirected_to clients_path
  end
end
