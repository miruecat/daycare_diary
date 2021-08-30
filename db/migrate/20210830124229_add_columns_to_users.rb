class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
    add_column :users, :admin, :boolean
    add_column :users, :username, :string
  end
end
