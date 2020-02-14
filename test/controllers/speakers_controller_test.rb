require 'test_helper'

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get speakers_url
    assert_response :success
  end

  test "should get new" do
    get new_speaker_url
    assert_response :success
  end

  test "should create speaker" do
    assert_difference('Speaker.count') do
      post speakers_url, params: { speaker: { description: @speaker.description, first_name: @speaker.first_name, last_name: @speaker.last_name, profession_1: @speaker.profession_1, profession_2: @speaker.profession_2 } }
    end

    assert_redirected_to speaker_url(Speaker.last)
  end

  test "should show speaker" do
    get speaker_url(@speaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaker_url(@speaker)
    assert_response :success
  end

  test "should update speaker" do
    patch speaker_url(@speaker), params: { speaker: { description: @speaker.description, first_name: @speaker.first_name, last_name: @speaker.last_name, profession_1: @speaker.profession_1, profession_2: @speaker.profession_2 } }
    assert_redirected_to speaker_url(@speaker)
  end

  test "should destroy speaker" do
    assert_difference('Speaker.count', -1) do
      delete speaker_url(@speaker)
    end

    assert_redirected_to speakers_url
  end
end
