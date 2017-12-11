require 'test_helper'

class RestmembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restmember = restmembers(:one)
  end

  test "should get index" do
    get restmembers_url
    assert_response :success
  end

  test "should get new" do
    get new_restmember_url
    assert_response :success
  end

  test "should create restmember" do
    assert_difference('Restmember.count') do
      post restmembers_url, params: { restmember: { event_id: @restmember.event_id, restaurant_id: @restmember.restaurant_id } }
    end

    assert_redirected_to restmember_url(Restmember.last)
  end

  test "should show restmember" do
    get restmember_url(@restmember)
    assert_response :success
  end

  test "should get edit" do
    get edit_restmember_url(@restmember)
    assert_response :success
  end

  test "should update restmember" do
    patch restmember_url(@restmember), params: { restmember: { event_id: @restmember.event_id, restaurant_id: @restmember.restaurant_id } }
    assert_redirected_to restmember_url(@restmember)
  end

  test "should destroy restmember" do
    assert_difference('Restmember.count', -1) do
      delete restmember_url(@restmember)
    end

    assert_redirected_to restmembers_url
  end
end
