class AddSpecialtiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :specialties, :string
  end
end
