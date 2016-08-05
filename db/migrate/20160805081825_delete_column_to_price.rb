class DeleteColumnToPrice < ActiveRecord::Migration
  def change
    remove_column :prices, :jan
    remove_column :prices, :feb
    remove_column :prices, :mar
    remove_column :prices, :apr
    remove_column :prices, :may
    remove_column :prices, :jun
    remove_column :prices, :aug
    remove_column :prices, :sep
    remove_column :prices, :ort
    remove_column :prices, :nov
    remove_column :prices, :dec
  end
end
