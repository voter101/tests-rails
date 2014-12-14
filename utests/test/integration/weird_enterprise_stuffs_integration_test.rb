require 'test_helper'

class WeirdEnterpriseStuffsIntegrationTest < ActionDispatch::IntegrationTest
  test "User made a mistake but everything ended with happy-end" do
    check_index(2)
    check_new
    check_creation
    check_index(3)
  end

  private
  def check_index(expected_items_count)
    get '/weird_enterprise_stuffs'
    assert_response :success
    assert_template 'weird_enterprise_stuffs/index'
    assert_equal WeirdEnterpriseStuff.count, expected_items_count
  end

  def check_new
    get '/weird_enterprise_stuffs/new'
    assert_response :success
    assert_template 'weird_enterprise_stuffs/new'
  end

  def check_creation
    check_bad_creation
    check_good_creation
  end

  def check_bad_creation
    post_via_redirect 'weird_enterprise_stuffs', weird_enterprise_stuff: {priority: 'none'}
    item = assigns(:weird_enterprise_stuff)
    assert !item.valid?
    assert_template 'weird_enterprise_stuffs/new'
  end

  def check_good_creation
    post_via_redirect 'weird_enterprise_stuffs', weird_enterprise_stuff: {priority: 'ASAP'}
    item = assigns(:weird_enterprise_stuff)
    assert item.valid?
    assert_template 'weird_enterprise_stuffs/show'
  end
end