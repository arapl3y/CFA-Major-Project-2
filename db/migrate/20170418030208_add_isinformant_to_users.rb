class AddIsinformantToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_informant, :boolean
  end
end
