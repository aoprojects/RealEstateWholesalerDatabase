class AddIndexToListings < ActiveRecord::Migration
  def change
    add_index :listings, :state_id
  end
end
