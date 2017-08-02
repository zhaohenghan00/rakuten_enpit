require 'test_helper'

class RakutenclipsControllerTest < ActionController::TestCase
  setup do
    @rakutenclip = rakutenclips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rakutenclips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rakutenclip" do
    assert_difference('Rakutenclip.count') do
      post :create, rakutenclip: { clipdate: @rakutenclip.clipdate, comment: @rakutenclip.comment, itemid: @rakutenclip.itemid }
    end

    assert_redirected_to rakutenclip_path(assigns(:rakutenclip))
  end

  test "should show rakutenclip" do
    get :show, id: @rakutenclip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rakutenclip
    assert_response :success
  end

  test "should update rakutenclip" do
    patch :update, id: @rakutenclip, rakutenclip: { clipdate: @rakutenclip.clipdate, comment: @rakutenclip.comment, itemid: @rakutenclip.itemid }
    assert_redirected_to rakutenclip_path(assigns(:rakutenclip))
  end

  test "should destroy rakutenclip" do
    assert_difference('Rakutenclip.count', -1) do
      delete :destroy, id: @rakutenclip
    end

    assert_redirected_to rakutenclips_path
  end
end
