class RemoveRequestedFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :requested, :boolean
  end
end
