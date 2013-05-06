class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :ProductID
      t.integer :ManufacturerID
      t.string :Name
      t.string :Description
      t.string :Type

      t.timestamps
    end
  end
end
