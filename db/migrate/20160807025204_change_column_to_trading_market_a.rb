class ChangeColumnToTradingMarketA < ActiveRecord::Migration
  def change
    remove_column :trading_markets, :on_price
    remove_column :trading_markets, :the_price
    remove_column :trading_markets, :by_price
    remove_column :trading_markets, :avg_price
    remove_column :trading_markets, :tranding_price
  end
end
