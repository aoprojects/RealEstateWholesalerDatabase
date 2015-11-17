class AddIndexToResources < ActiveRecord::Migration
  def change
    add_column :resources, :user_id, :integer
    add_index :resources, :user_id
  end
end
