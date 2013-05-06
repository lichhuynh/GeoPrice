class CreateWishlistitems < ActiveRecord::Migration
  def change
    create_table :wishlistitems do |t|
      t.integer :ListID
      t.integer :ProductID
      t.decimal :DesiredPrice
      t.integer :PriceVariance
      t.integer :Quantity
      t.string :StoreType

      t.timestamps
    end
  end
end
