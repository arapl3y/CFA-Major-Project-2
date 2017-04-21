class AddApprovedToItemRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :item_requests, :approved, :boolean, default: false
  end
end
