require 'test_helper'

class DummyTablesControllerTest < ActionController::TestCase
  setup do
    @dummy_table = dummy_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dummy_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dummy_table" do
    assert_difference('DummyTable.count') do
      post :create, dummy_table: { isStudent: @dummy_table.isStudent, lastName: @dummy_table.lastName, name: @dummy_table.name }
    end

    assert_redirected_to dummy_table_path(assigns(:dummy_table))
  end

  test "should show dummy_table" do
    get :show, id: @dummy_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dummy_table
    assert_response :success
  end

  test "should update dummy_table" do
    put :update, id: @dummy_table, dummy_table: { isStudent: @dummy_table.isStudent, lastName: @dummy_table.lastName, name: @dummy_table.name }
    assert_redirected_to dummy_table_path(assigns(:dummy_table))
  end

  test "should destroy dummy_table" do
    assert_difference('DummyTable.count', -1) do
      delete :destroy, id: @dummy_table
    end

    assert_redirected_to dummy_tables_path
  end
end
