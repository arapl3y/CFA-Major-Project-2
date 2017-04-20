class AddRequestedByToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :requested_by, :integer
  end
end
