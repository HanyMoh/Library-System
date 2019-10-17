class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, foreign_key: true, index: true
      t.text :details
      t.string :release
      t.string :year
      t.integer :copies, default: 0
      t.references :auther, null: false, foreign_key: true, index: true
      t.references :topic, null: false, foreign_key: true, index: true
      t.references :publisher, null: false, foreign_key: true, index: true
      t.references :book_type, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
