class AddDaycareIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :daycare, foreign_key: true
  end
end
