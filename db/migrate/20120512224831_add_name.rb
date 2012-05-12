class AddName < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
    add_column :users, :status, :string
    add_column :users, :deleted_at, :timestamp
  end

  def down
    remove_column :users, :name
    remove_column :users, :status
    remove_column :users, :deleted_at
  end
end
