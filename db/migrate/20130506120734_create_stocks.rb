class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :StoreID
      t.integer :ProductID
      t.decimal :Price
      t.integer :Quantity

      t.timestamps
    end
  end
end
