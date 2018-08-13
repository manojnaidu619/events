class RemoveImageUpdatedAtFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :image_updated_at, :datetime
  end
end
