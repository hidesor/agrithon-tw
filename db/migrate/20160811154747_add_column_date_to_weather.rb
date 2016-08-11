class AddColumnDateToWeather < ActiveRecord::Migration
  def change
    add_column :weathers, :date_a , :date
    add_column :weathers, :date_b , :date
    add_column :weathers, :date_c , :date
    add_column :weathers, :date_d , :date
  end
end
