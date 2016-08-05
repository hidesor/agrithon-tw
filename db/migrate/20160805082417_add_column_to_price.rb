class AddColumnToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :jan , :string
    add_column :prices, :feb , :string
    add_column :prices, :mar , :string
    add_column :prices, :apr , :string
    add_column :prices, :may , :string
    add_column :prices, :jun , :string
    add_column :prices, :aug , :string
    add_column :prices, :sep , :string
    add_column :prices, :ort , :string
    add_column :prices, :nov , :string
    add_column :prices, :dec , :string
  end
end
