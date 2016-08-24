class CreateEntryLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_logs do |t|
      t.date :day
      t.references :log, polymorphic: true

      t.timestamps
    end
  end
end
