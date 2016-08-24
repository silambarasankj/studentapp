class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.belongs_to :employee, foreign_key: true


      t.timestamps
    end

  end
end
