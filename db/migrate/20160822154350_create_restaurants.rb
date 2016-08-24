class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :delivery_radius
      t.string :phone_number
      t.string :email_address
      t.string :description
      t.string :cuisine

      t.timestamps
    end
  end
end
