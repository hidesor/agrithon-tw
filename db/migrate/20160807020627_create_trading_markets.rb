class CreateTradingMarkets < ActiveRecord::Migration
  def change
    create_table :trading_markets do |t|
      t.date :trading_date
      t.string :crop_name
      t.string :crop_number
      t.string :market_name
      t.string :market_number
      t.integer :on_price
      t.integer :the_price
      t.integer :by_price
      t.integer :by_price
      t.integer :avg_price
      t.integer :tranding_price

      t.timestamps null: false
    end
  end
end


#"交易日期":"105.08.07",
#"作物代號":"11",
#"作物名稱":"椰子",
#"市場代號":"104",
#"市場名稱":"台北二",
#"上價":"57.1",
#"中價":"36.7",
#"下價":"14.9",
#"平均價":"36.7",
#"交易量":"1040"
