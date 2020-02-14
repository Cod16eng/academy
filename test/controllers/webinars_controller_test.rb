require 'test_helper'

class WebinarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webinar = webinars(:one)
  end

  test "should get index" do
    get webinars_url
    assert_response :success
  end

  test "should get new" do
    get new_webinar_url
    assert_response :success
  end

  test "should create webinar" do
    assert_difference('Webinar.count') do
      post webinars_url, params: { webinar: { category_id: @webinar.category_id, date_from: @webinar.date_from, date_to: @webinar.date_to, program: @webinar.program, title: @webinar.title, user_id: @webinar.user_id } }
    end

    assert_redirected_to webinar_url(Webinar.last)
  end

  test "should show webinar" do
    get webinar_url(@webinar)
    assert_response :success
  end

  test "should get edit" do
    get edit_webinar_url(@webinar)
    assert_response :success
  end

  test "should update webinar" do
    patch webinar_url(@webinar), params: { webinar: { category_id: @webinar.category_id, date_from: @webinar.date_from, date_to: @webinar.date_to, program: @webinar.program, title: @webinar.title, user_id: @webinar.user_id } }
    assert_redirected_to webinar_url(@webinar)
  end

  test "should destroy webinar" do
    assert_difference('Webinar.count', -1) do
      delete webinar_url(@webinar)
    end

    assert_redirected_to webinars_url
  end
end
