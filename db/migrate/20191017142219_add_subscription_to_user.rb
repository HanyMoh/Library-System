class AddSubscriptionToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :subscription, null: false, foreign_key: true, index: true
  end
end
