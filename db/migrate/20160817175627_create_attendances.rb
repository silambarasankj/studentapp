class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.date :day
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
  end
end
