class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name

      t.timestamps null: false
    end
  end
end
