class CreateBookTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :book_types do |t|
      t.string :title, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
