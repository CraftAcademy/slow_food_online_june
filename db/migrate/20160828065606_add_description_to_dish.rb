class AddDescriptionToDish < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :description, :text
  end
end
