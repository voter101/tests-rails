require 'test_helper'

class WeirdEnterpriseStuffsControllerTest < ActionController::TestCase
  setup do
    @good_item = weird_enterprise_stuffs(:good)
    @bad_item  = weird_enterprise_stuffs(:bad)
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
    assert_difference('WeirdEnterpriseStuff.count', 1) do
      post :create, weird_enterprise_stuff: { priority: @good_item.priority }
      assert_redirected_to weird_enterprise_stuff_path(assigns(:weird_enterprise_stuff))
    end
  end

  test "should get an error while creating bad item" do
    assert_no_difference('WeirdEnterpriseStuff.count') do
      post :create, weird_enterprise_stuff: { priority: @bad_item.priority }
    end
  end

  test "should show weird_enterprise_stuff" do
    get :show, id: @good_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @good_item
    assert_response :success
  end


  test "should update weird_enterprise_stuff" do
    patch :update, id: @good_item, weird_enterprise_stuff: { priority: @good_item.priority }
    assert_redirected_to weird_enterprise_stuff_path(assigns(:weird_enterprise_stuff))
  end

  test "should destroy weird_enterprise_stuff" do
    assert_difference('WeirdEnterpriseStuff.count', -1) do
      delete :destroy, id: @good_item
    end

    assert_redirected_to weird_enterprise_stuffs_path
  end
end
