class AddSubscriberAndStripeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscribed, :boolean
    add_column :users, :stripeid, :string
  end
end
