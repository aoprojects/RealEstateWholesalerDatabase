class AddStateNameToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :state_name, :string
  end
end
