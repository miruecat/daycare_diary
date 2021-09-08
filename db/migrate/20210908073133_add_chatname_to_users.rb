class AddChatnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :chatname, :string
  end
end
