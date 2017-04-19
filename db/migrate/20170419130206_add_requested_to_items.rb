class AddRequestedToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :requested, :boolean, default: false
  end
end
