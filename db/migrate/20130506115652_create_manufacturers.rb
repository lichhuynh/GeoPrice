class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.integer :ManufacturerID
      t.string :Name
      t.string :Address
      t.string :City
      t.string :Phone
      t.string :Email
      t.string :Fax
      t.string :PostCode

      t.timestamps
    end
  end
end
