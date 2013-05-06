class CreateDummyTables < ActiveRecord::Migration
  def change
    create_table :dummy_tables do |t|
      t.string :name
      t.string :lastName
      t.binary :isStudent

      t.timestamps
    end
  end
end
