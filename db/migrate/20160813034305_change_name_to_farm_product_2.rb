class ChangeNameToFarmProduct2 < ActiveRecord::Migration
  def change
    remove_column :farm_products , :variery
    add_column :farm_products,:variety,:string
  end
end
