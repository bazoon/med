require 'test_helper'

class SanatoriumNotesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @sanatorium_note = sanatorium_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanatorium_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sanatorium_note" do
    assert_difference('SanatoriumNote.count') do
      post :create, sanatorium_note: @sanatorium_note.attributes
    end

    assert_redirected_to sanatorium_note_path(assigns(:sanatorium_note))
  end

  test "should show sanatorium_note" do
    get :show, id: @sanatorium_note.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sanatorium_note.to_param
    assert_response :success
  end

  test "should update sanatorium_note" do
    put :update, id: @sanatorium_note.to_param, sanatorium_note: @sanatorium_note.attributes
    assert_redirected_to sanatorium_note_path(assigns(:sanatorium_note))
  end

  test "should destroy sanatorium_note" do
    assert_difference('SanatoriumNote.count', -1) do
      delete :destroy, id: @sanatorium_note.to_param
    end

    assert_redirected_to sanatorium_notes_path
  end
end
