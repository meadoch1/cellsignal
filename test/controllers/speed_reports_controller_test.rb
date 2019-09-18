require 'test_helper'

class SpeedReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speed_report = speed_reports(:one)
  end

  test "should get index" do
    get speed_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_speed_report_url
    assert_response :success
  end

  test "should create speed_report" do
    assert_difference('SpeedReport.count') do
      post speed_reports_url, params: { speed_report: { booster: @speed_report.booster, carrier_id: @speed_report.carrier_id, comment: @speed_report.comment, device_name: @speed_report.device_name, download_mb: @speed_report.download_mb, external_antenna: @speed_report.external_antenna, location_id: @speed_report.location_id, ping_ms: @speed_report.ping_ms, site_name: @speed_report.site_name, test_dt: @speed_report.test_dt, upload_mb: @speed_report.upload_mb } }
    end

    assert_redirected_to speed_report_url(SpeedReport.last)
  end

  test "should show speed_report" do
    get speed_report_url(@speed_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_speed_report_url(@speed_report)
    assert_response :success
  end

  test "should update speed_report" do
    patch speed_report_url(@speed_report), params: { speed_report: { booster: @speed_report.booster, carrier_id: @speed_report.carrier_id, comment: @speed_report.comment, device_name: @speed_report.device_name, download_mb: @speed_report.download_mb, external_antenna: @speed_report.external_antenna, location_id: @speed_report.location_id, ping_ms: @speed_report.ping_ms, site_name: @speed_report.site_name, test_dt: @speed_report.test_dt, upload_mb: @speed_report.upload_mb } }
    assert_redirected_to speed_report_url(@speed_report)
  end

  test "should destroy speed_report" do
    assert_difference('SpeedReport.count', -1) do
      delete speed_report_url(@speed_report)
    end

    assert_redirected_to speed_reports_url
  end
end
