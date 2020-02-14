require "application_system_test_case"

class WebinarsTest < ApplicationSystemTestCase
  setup do
    @webinar = webinars(:one)
  end

  test "visiting the index" do
    visit webinars_url
    assert_selector "h1", text: "Webinars"
  end

  test "creating a Webinar" do
    visit webinars_url
    click_on "New Webinar"

    fill_in "Category", with: @webinar.category_id
    fill_in "Date from", with: @webinar.date_from
    fill_in "Date to", with: @webinar.date_to
    fill_in "Program", with: @webinar.program
    fill_in "Title", with: @webinar.title
    fill_in "User", with: @webinar.user_id
    click_on "Create Webinar"

    assert_text "Webinar was successfully created"
    click_on "Back"
  end

  test "updating a Webinar" do
    visit webinars_url
    click_on "Edit", match: :first

    fill_in "Category", with: @webinar.category_id
    fill_in "Date from", with: @webinar.date_from
    fill_in "Date to", with: @webinar.date_to
    fill_in "Program", with: @webinar.program
    fill_in "Title", with: @webinar.title
    fill_in "User", with: @webinar.user_id
    click_on "Update Webinar"

    assert_text "Webinar was successfully updated"
    click_on "Back"
  end

  test "destroying a Webinar" do
    visit webinars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webinar was successfully destroyed"
  end
end
