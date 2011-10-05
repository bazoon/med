require 'test_helper'

class HtmHelpNotesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @htm_help_note = htm_help_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:htm_help_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create htm_help_note" do
    assert_difference('HtmHelpNote.count') do
      post :create, htm_help_note: @htm_help_note.attributes
    end

    assert_redirected_to htm_help_note_path(assigns(:htm_help_note))
  end

  test "should show htm_help_note" do
    get :show, id: @htm_help_note.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @htm_help_note.to_param
    assert_response :success
  end

  test "should update htm_help_note" do
    put :update, id: @htm_help_note.to_param, htm_help_note: @htm_help_note.attributes
    assert_redirected_to htm_help_note_path(assigns(:htm_help_note))
  end

  test "should destroy htm_help_note" do
    assert_difference('HtmHelpNote.count', -1) do
      delete :destroy, id: @htm_help_note.to_param
    end

    assert_redirected_to htm_help_notes_path
  end
end
