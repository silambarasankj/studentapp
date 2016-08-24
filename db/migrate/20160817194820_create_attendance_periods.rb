class CreateAttendancePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :attendance_periods do |t|
      t.time :from_hour
      t.time :to_hour
      t.belongs_to :attendance, foreign_key: true

      t.timestamps
    end
  end
end
