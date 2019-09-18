class CreateSpeedReports < ActiveRecord::Migration[6.0]
  def change
    create_table :speed_reports do |t|
      t.datetime :test_dt
      t.references :location, null: false, foreign_key: true
      t.string :site_name
      t.references :carrier, null: false, foreign_key: true
      t.string :device_name
      t.integer :ping_ms
      t.decimal :download_mb
      t.decimal :upload_mb
      t.string :booster
      t.string :external_antenna
      t.string :comment

      t.timestamps
    end
  end
end
