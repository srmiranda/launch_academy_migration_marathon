class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |table|
      # table.integer :book_id, null: false
      table.index :book_id
      table.belongs_to :book, null: false
    end
  end
end
