class CreateWeatherTests < ActiveRecord::Migration
  def change
    create_table :weather_tests do |t|
      t.date :date_a

      t.timestamps null: false
    end
  end
end
