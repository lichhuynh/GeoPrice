class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.integer :ListID
      t.integer :UserID
      t.string :LastName
      t.date :LastUpdated
      t.date :ValidFrom
      t.date :ValidTo

      t.timestamps
    end
  end
end
