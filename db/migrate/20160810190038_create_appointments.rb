class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_join_table :patients,:physicians, table_name:'appointments' do |t|
  

    end
  end
end
