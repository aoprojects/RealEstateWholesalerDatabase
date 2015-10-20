class AddStateIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :state_id, :integer
  end
end
