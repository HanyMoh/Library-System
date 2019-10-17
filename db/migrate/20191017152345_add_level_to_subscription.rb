class AddLevelToSubscription < ActiveRecord::Migration[6.0]
  def change
    add_column :subscriptions, :level, :integer, default: 1
  end
end
