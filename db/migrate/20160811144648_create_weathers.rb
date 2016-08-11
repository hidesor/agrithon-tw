class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :name_a
      t.string :name_b
      t.string :name_c
      t.string :name_d
      t.string :name_e
      t.float :num_a
      t.float :num_b
      t.float :num_c
      t.float :num_d
      t.float :num_e
      t.float :num_f
      t.float :num_g
      t.float :num_h

      t.timestamps null: false
    end
  end
end
