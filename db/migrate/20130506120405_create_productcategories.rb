class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
      t.integer :ProductID
      t.integer :CategoryID

      t.timestamps
    end
  end
end
