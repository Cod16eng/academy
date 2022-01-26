require "application_system_test_case"

class QuadernisTest < ApplicationSystemTestCase
  setup do
    @quaderni = quadernis(:one)
  end

  test "visiting the index" do
    visit quadernis_url
    assert_selector "h1", text: "Quadernis"
  end

  test "creating a Quaderni" do
    visit quadernis_url
    click_on "New Quaderni"

    fill_in "File doc", with: @quaderni.file_doc
    fill_in "Release date", with: @quaderni.release_date
    fill_in "Speaker", with: @quaderni.speaker_id
    fill_in "Title", with: @quaderni.title
    click_on "Create Quaderni"

    assert_text "Quaderni was successfully created"
    click_on "Back"
  end

  test "updating a Quaderni" do
    visit quadernis_url
    click_on "Edit", match: :first

    fill_in "File doc", with: @quaderni.file_doc
    fill_in "Release date", with: @quaderni.release_date
    fill_in "Speaker", with: @quaderni.speaker_id
    fill_in "Title", with: @quaderni.title
    click_on "Update Quaderni"

    assert_text "Quaderni was successfully updated"
    click_on "Back"
  end

  test "destroying a Quaderni" do
    visit quadernis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quaderni was successfully destroyed"
  end
end
