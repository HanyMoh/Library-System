class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :title, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
