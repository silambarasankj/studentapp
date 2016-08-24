class AddGenderToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :gender, :string
    add_column :employees, :language, :string
  end
end
