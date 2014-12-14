require 'test_helper'

class WeirdEnterpriseStuffsControllerTest < ActionController::TestCase
  setup do
    @weird_enterprise_stuff = weird_enterprise_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weird_enterprise_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weird_enterprise_stuff" do
    assert_difference('WeirdEnterpriseStuff.count') do
      post :create, weird_enterprise_stuff: { priority: @weird_enterprise_stuff.priority }
    end

    assert_redirected_to weird_enterprise_stuff_path(assigns(:weird_enterprise_stuff))
  end

  test "should show weird_enterprise_stuff" do
    get :show, id: @weird_enterprise_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weird_enterprise_stuff
    assert_response :success
  end

  test "should update weird_enterprise_stuff" do
    patch :update, id: @weird_enterprise_stuff, weird_enterprise_stuff: { priority: @weird_enterprise_stuff.priority }
    assert_redirected_to weird_enterprise_stuff_path(assigns(:weird_enterprise_stuff))
  end

  test "should destroy weird_enterprise_stuff" do
    assert_difference('WeirdEnterpriseStuff.count', -1) do
      delete :destroy, id: @weird_enterprise_stuff
    end

    assert_redirected_to weird_enterprise_stuffs_path
  end
end
