class AddIndexToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :state_id, :integer
    add_index :listings, :state_id
  end
end
