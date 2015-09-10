class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :book
  validates :book_id, presence: true, uniqueness: { scope: :category_id }
  validates :category_id, presence: true, uniqueness: { scope: :book_id }
  # validates_uniqueness_of :book_id, scope: :category_id
end
