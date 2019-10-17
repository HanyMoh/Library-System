class CreateAuthers < ActiveRecord::Migration[6.0]
  def change
    create_table :authers do |t|
      t.string :title, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
