require 'test_helper'

class ChannalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @channal = channals(:one)
  end

  test "should get index" do
    get channals_url
    assert_response :success
  end

  test "should get new" do
    get new_channal_url
    assert_response :success
  end

  test "should create channal" do
    assert_difference('Channal.count') do
      post channals_url, params: { channal: { description: @channal.description, is_active: @channal.is_active, title: @channal.title } }
    end

    assert_redirected_to channal_url(Channal.last)
  end

  test "should show channal" do
    get channal_url(@channal)
    assert_response :success
  end

  test "should get edit" do
    get edit_channal_url(@channal)
    assert_response :success
  end

  test "should update channal" do
    patch channal_url(@channal), params: { channal: { description: @channal.description, is_active: @channal.is_active, title: @channal.title } }
    assert_redirected_to channal_url(@channal)
  end

  test "should destroy channal" do
    assert_difference('Channal.count', -1) do
      delete channal_url(@channal)
    end

    assert_redirected_to channals_url
  end
end
