class ChangeColumnToTradingMarketD < ActiveRecord::Migration
  def change
    add_column :trading_markets, :on_price , :string
    add_column :trading_markets, :the_price , :string
    add_column :trading_markets, :by_price , :string
    add_column :trading_markets, :avg_price , :string
    add_column :trading_markets, :tranding_price , :string
  end
end
