class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :UserID
      t.string :FirstName
      t.string :LastName
      t.string :Username
      t.string :Address
      t.string :City
      t.string :Postcode
      t.string :Phone
      t.string :Email

      t.timestamps
    end
  end
end
