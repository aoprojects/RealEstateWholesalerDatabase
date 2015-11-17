class AddSpecialtiesToResources < ActiveRecord::Migration
  def change
    add_column :resources, :specialties, :text
  end
end
