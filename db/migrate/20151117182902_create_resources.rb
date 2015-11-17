class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource_name
      t.references :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
