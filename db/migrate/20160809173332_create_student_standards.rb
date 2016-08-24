class CreateStudentStandards < ActiveRecord::Migration[5.0]
  def change
    create_join_table :students, :standards do |t|

      t.timestamps
    end
  end
end
