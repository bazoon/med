require 'test_helper'

class ProfInspectionsControllerTest < ActionController::TestCase
  setup do
    @prof_inspection = prof_inspections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prof_inspections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prof_inspection" do
    assert_difference('ProfInspection.count') do
      post :create, prof_inspection: @prof_inspection.attributes
    end

    assert_redirected_to prof_inspection_path(assigns(:prof_inspection))
  end

  test "should show prof_inspection" do
    get :show, id: @prof_inspection.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prof_inspection.to_param
    assert_response :success
  end

  test "should update prof_inspection" do
    put :update, id: @prof_inspection.to_param, prof_inspection: @prof_inspection.attributes
    assert_redirected_to prof_inspection_path(assigns(:prof_inspection))
  end

  test "should destroy prof_inspection" do
    assert_difference('ProfInspection.count', -1) do
      delete :destroy, id: @prof_inspection.to_param
    end

    assert_redirected_to prof_inspections_path
  end
end
