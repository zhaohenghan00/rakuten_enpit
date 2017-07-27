require 'test_helper'

class DataTestsControllerTest < ActionController::TestCase
  setup do
    @data_test = data_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_test" do
    assert_difference('DataTest.count') do
      post :create, data_test: { field1: @data_test.field1, field2: @data_test.field2, field3: @data_test.field3, field4: @data_test.field4, field5: @data_test.field5 }
    end

    assert_redirected_to data_test_path(assigns(:data_test))
  end

  test "should show data_test" do
    get :show, id: @data_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_test
    assert_response :success
  end

  test "should update data_test" do
    patch :update, id: @data_test, data_test: { field1: @data_test.field1, field2: @data_test.field2, field3: @data_test.field3, field4: @data_test.field4, field5: @data_test.field5 }
    assert_redirected_to data_test_path(assigns(:data_test))
  end

  test "should destroy data_test" do
    assert_difference('DataTest.count', -1) do
      delete :destroy, id: @data_test
    end

    assert_redirected_to data_tests_path
  end
end
