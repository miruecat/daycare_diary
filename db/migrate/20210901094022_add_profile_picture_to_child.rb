class AddProfilePictureToChild < ActiveRecord::Migration[6.1]
  def change
    add_column :children, :photo, :text
  end
end
