class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :CategoryID
      t.string :CategoryName
      t.string :SubCategory

      t.timestamps
    end
  end
end
