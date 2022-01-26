require "test_helper"

class QuadernisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quaderni = quadernis(:one)
  end

  test "should get index" do
    get quadernis_url
    assert_response :success
  end

  test "should get new" do
    get new_quaderni_url
    assert_response :success
  end

  test "should create quaderni" do
    assert_difference('Quaderni.count') do
      post quadernis_url, params: { quaderni: { file_doc: @quaderni.file_doc, release_date: @quaderni.release_date, speaker_id: @quaderni.speaker_id, title: @quaderni.title } }
    end

    assert_redirected_to quaderni_url(Quaderni.last)
  end

  test "should show quaderni" do
    get quaderni_url(@quaderni)
    assert_response :success
  end

  test "should get edit" do
    get edit_quaderni_url(@quaderni)
    assert_response :success
  end

  test "should update quaderni" do
    patch quaderni_url(@quaderni), params: { quaderni: { file_doc: @quaderni.file_doc, release_date: @quaderni.release_date, speaker_id: @quaderni.speaker_id, title: @quaderni.title } }
    assert_redirected_to quaderni_url(@quaderni)
  end

  test "should destroy quaderni" do
    assert_difference('Quaderni.count', -1) do
      delete quaderni_url(@quaderni)
    end

    assert_redirected_to quadernis_url
  end
end
