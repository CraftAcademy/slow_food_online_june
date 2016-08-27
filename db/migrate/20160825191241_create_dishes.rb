class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.string :allergy_info
      t.string :ingredients
      t.integer :calories

      t.timestamps null: false
    end
  end
end
