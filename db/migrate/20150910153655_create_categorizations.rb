class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |table|
      table.integer :book_id, null: false
      table.integer :category_id, null: false
      # table.index [:book_id, :category_id ], unique: true
    end
    add_index :categorizations, [ :book_id, :category_id ], unique: true
  end
end
