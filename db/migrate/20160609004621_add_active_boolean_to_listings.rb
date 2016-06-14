class AddActiveBooleanToListings < ActiveRecord::Migration
  def change
    add_column :listings, :active_listing, :boolean, default: false
  end
end
