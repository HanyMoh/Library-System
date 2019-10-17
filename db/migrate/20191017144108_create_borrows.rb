class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :book, null: false, foreign_key: true, index: true
      t.date :st_date
      t.integer :duration_by_days, default: 1

      t.timestamps
    end
  end
end
