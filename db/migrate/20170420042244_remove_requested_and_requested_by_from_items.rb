class RemoveRequestedAndRequestedByFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :requested, :boolean
    remove_column :items, :requested_by, :integer
  end
end
