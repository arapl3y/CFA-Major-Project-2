class RemoveAttachmentImageToItems < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :items, :image
  end
end
