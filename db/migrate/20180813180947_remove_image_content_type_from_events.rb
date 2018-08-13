class RemoveImageContentTypeFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :image_content_type, :string
  end
end
