class RemoveImageFileSizeFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :image_file_size, :integer
  end
end
