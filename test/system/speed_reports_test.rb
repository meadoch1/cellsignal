require "application_system_test_case"

class SpeedReportsTest < ApplicationSystemTestCase
  setup do
    @speed_report = speed_reports(:one)
  end

  test "visiting the index" do
    visit speed_reports_url
    assert_selector "h1", text: "Speed Reports"
  end

  test "creating a Speed report" do
    visit speed_reports_url
    click_on "New Speed Report"

    fill_in "Booster", with: @speed_report.booster
    fill_in "Carrier", with: @speed_report.carrier_id
    fill_in "Comment", with: @speed_report.comment
    fill_in "Device name", with: @speed_report.device_name
    fill_in "Download mb", with: @speed_report.download_mb
    fill_in "External antenna", with: @speed_report.external_antenna
    fill_in "Location", with: @speed_report.location_id
    fill_in "Ping ms", with: @speed_report.ping_ms
    fill_in "Site name", with: @speed_report.site_name
    fill_in "Test dt", with: @speed_report.test_dt
    fill_in "Upload mb", with: @speed_report.upload_mb
    click_on "Create Speed report"

    assert_text "Speed report was successfully created"
    click_on "Back"
  end

  test "updating a Speed report" do
    visit speed_reports_url
    click_on "Edit", match: :first

    fill_in "Booster", with: @speed_report.booster
    fill_in "Carrier", with: @speed_report.carrier_id
    fill_in "Comment", with: @speed_report.comment
    fill_in "Device name", with: @speed_report.device_name
    fill_in "Download mb", with: @speed_report.download_mb
    fill_in "External antenna", with: @speed_report.external_antenna
    fill_in "Location", with: @speed_report.location_id
    fill_in "Ping ms", with: @speed_report.ping_ms
    fill_in "Site name", with: @speed_report.site_name
    fill_in "Test dt", with: @speed_report.test_dt
    fill_in "Upload mb", with: @speed_report.upload_mb
    click_on "Update Speed report"

    assert_text "Speed report was successfully updated"
    click_on "Back"
  end

  test "destroying a Speed report" do
    visit speed_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speed report was successfully destroyed"
  end
end
