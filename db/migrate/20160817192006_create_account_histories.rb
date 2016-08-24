class CreateAccountHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :account_histories do |t|
      t.integer :limit
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
