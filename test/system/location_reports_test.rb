require "application_system_test_case"

class LocationReportsTest < ApplicationSystemTestCase
  setup do
    @location_report = location_reports(:one)
  end

  test "visiting the index" do
    visit location_reports_url
    assert_selector "h1", text: "Location Reports"
  end

  test "creating a Location report" do
    visit location_reports_url
    click_on "New Location Report"

    fill_in "Comment", with: @location_report.comment
    fill_in "Hookups", with: @location_report.hookups
    fill_in "Speed report", with: @location_report.speed_report_id
    click_on "Create Location report"

    assert_text "Location report was successfully created"
    click_on "Back"
  end

  test "updating a Location report" do
    visit location_reports_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @location_report.comment
    fill_in "Hookups", with: @location_report.hookups
    fill_in "Speed report", with: @location_report.speed_report_id
    click_on "Update Location report"

    assert_text "Location report was successfully updated"
    click_on "Back"
  end

  test "destroying a Location report" do
    visit location_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location report was successfully destroyed"
  end
end
