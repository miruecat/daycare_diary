class RemovePictureFromChild < ActiveRecord::Migration[6.1]
  def change
    remove_column :children, :photo
  end
end
