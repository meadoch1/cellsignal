json.extract! location_report, :id, :speed_report_id, :hookups, :comment, :created_at, :updated_at
json.url location_report_url(location_report, format: :json)
