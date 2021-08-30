class CreateParenthoods < ActiveRecord::Migration[6.1]
  def change
    create_table :parenthoods do |t|
      t.references :user, null: false, foreign_key: true
      t.references :child, null: false, foreign_key: true
      t.timestamps
    end
  end
end
