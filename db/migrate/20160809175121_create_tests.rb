class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.belongs_to :standard
      t.belongs_to :student

      t.timestamps
    end
  end
end
