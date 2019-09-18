class CreateLocationReports < ActiveRecord::Migration[6.0]
  def change
    create_table :location_reports do |t|
      t.references :speed_report, null: false, foreign_key: true
      t.string :hookups
      t.string :comment

      t.timestamps
    end
  end
end
