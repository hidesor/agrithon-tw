class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.string :year
      t.integer :jan
      t.integer :feb
      t.integer :mar
      t.integer :apr
      t.integer :may
      t.integer :jun
      t.integer :jul
      t.integer :aug
      t.integer :sep
      t.integer :ort
      t.integer :nov
      t.integer :dec
      t.timestamps null: false
    end
  end
end
