class ChangeNameToFarmProduct < ActiveRecord::Migration
  def change
    remove_column :farm_products , :type
    add_column :farm_products,:ptype,:string
  end
end
