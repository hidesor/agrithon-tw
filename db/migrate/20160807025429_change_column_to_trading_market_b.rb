class ChangeColumnToTradingMarketB < ActiveRecord::Migration
  def change
    add_column :trading_markets, :on_price , :float
    add_column :trading_markets, :the_price , :float
    add_column :trading_markets, :by_price , :float
    add_column :trading_markets, :avg_price , :float
    add_column :trading_markets, :tranding_price , :float
  end
end
