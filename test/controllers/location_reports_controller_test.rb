require 'test_helper'

class LocationReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_report = location_reports(:one)
  end

  test "should get index" do
    get location_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_location_report_url
    assert_response :success
  end

  test "should create location_report" do
    assert_difference('LocationReport.count') do
      post location_reports_url, params: { location_report: { comment: @location_report.comment, hookups: @location_report.hookups, speed_report_id: @location_report.speed_report_id } }
    end

    assert_redirected_to location_report_url(LocationReport.last)
  end

  test "should show location_report" do
    get location_report_url(@location_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_report_url(@location_report)
    assert_response :success
  end

  test "should update location_report" do
    patch location_report_url(@location_report), params: { location_report: { comment: @location_report.comment, hookups: @location_report.hookups, speed_report_id: @location_report.speed_report_id } }
    assert_redirected_to location_report_url(@location_report)
  end

  test "should destroy location_report" do
    assert_difference('LocationReport.count', -1) do
      delete location_report_url(@location_report)
    end

    assert_redirected_to location_reports_url
  end
end
