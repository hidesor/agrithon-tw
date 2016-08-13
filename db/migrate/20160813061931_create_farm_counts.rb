class CreateFarmCounts < ActiveRecord::Migration
  def change
    create_table :farm_counts do |t|

      t.timestamps null: false
    end
  end
end
