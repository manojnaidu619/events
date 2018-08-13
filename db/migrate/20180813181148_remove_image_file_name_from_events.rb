class RemoveImageFileNameFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :image_file_name, :string
  end
end
