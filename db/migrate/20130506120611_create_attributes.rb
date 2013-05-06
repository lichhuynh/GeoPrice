class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.integer :AttributeID
      t.integer :ProductID
      t.string :AttributeName
      t.string :AttributeDescription
      t.string :AttributeValue
      t.string :AttributeValueUnit

      t.timestamps
    end
  end
end
