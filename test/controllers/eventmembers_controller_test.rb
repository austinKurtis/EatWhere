require 'test_helper'

class EventmembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventmember = eventmembers(:one)
  end

  test "should get index" do
    get eventmembers_url
    assert_response :success
  end

  test "should get new" do
    get new_eventmember_url
    assert_response :success
  end

  test "should create eventmember" do
    assert_difference('Eventmember.count') do
      post eventmembers_url, params: { eventmember: { restaurant_id: @eventmember.restaurant_id, user_id: @eventmember.user_id } }
    end

    assert_redirected_to eventmember_url(Eventmember.last)
  end

  test "should show eventmember" do
    get eventmember_url(@eventmember)
    assert_response :success
  end

  test "should get edit" do
    get edit_eventmember_url(@eventmember)
    assert_response :success
  end

  test "should update eventmember" do
    patch eventmember_url(@eventmember), params: { eventmember: { restaurant_id: @eventmember.restaurant_id, user_id: @eventmember.user_id } }
    assert_redirected_to eventmember_url(@eventmember)
  end

  test "should destroy eventmember" do
    assert_difference('Eventmember.count', -1) do
      delete eventmember_url(@eventmember)
    end

    assert_redirected_to eventmembers_url
  end
end
