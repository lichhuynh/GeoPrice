class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.integer :UserID
      t.string :Password
      t.integer :RoleID

      t.timestamps
    end
  end
end
