class CreateFarmProducts < ActiveRecord::Migration
  def change
    create_table :farm_products do |t|
      t.string :type
      t.string :month
      t.string :crop
      t.string :variery
      t.string :county
      t.string :town

      t.timestamps null: false
    end
  end
end
