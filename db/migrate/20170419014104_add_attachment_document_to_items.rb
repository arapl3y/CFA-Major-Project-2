class AddAttachmentDocumentToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :items, :document
  end
end
