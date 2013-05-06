class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :StoreID
      t.string :Name
      t.string :Address
      t.string :City
      t.string :Phone
      t.string :Email
      t.string :PostCode
      t.string :StoreType

      t.timestamps
    end
  end
end
