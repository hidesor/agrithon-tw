class CreateWeatherData < ActiveRecord::Migration
  def change
    create_table :weather_data do |t|
      t.date :a_date
      t.date :b_date
      t.date :c_date
      t.string :a_string
      t.string :b_string
      t.string :c_string
      t.string :d_string
      t.integer :data_a
      t.integer :data_b
      t.integer :data_c
      t.integer :data_d
      t.integer :data_e
      t.integer :data_f
      t.integer :data_g
      t.integer :data_h
      t.integer :data_i
      t.timestamps null: false
    end
  end
end
