class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :RoleID
      t.string :RoleName

      t.timestamps
    end
  end
end
