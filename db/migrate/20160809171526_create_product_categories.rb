class CreateProductCategories < ActiveRecord::Migration[5.0]
def change
    create_join_table :products, :categories do |t|
  end
  end
end
