json.extract! speed_report, :id, :test_dt, :location_id, :site_name, :carrier_id, :device_name, :ping_ms, :download_mb, :upload_mb, :booster, :external_antenna, :comment, :created_at, :updated_at
json.url speed_report_url(speed_report, format: :json)
