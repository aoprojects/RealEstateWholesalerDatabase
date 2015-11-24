class AddStateIdToStates < ActiveRecord::Migration
  def change
    add_column :states, :state_id, :integer
  end
end
