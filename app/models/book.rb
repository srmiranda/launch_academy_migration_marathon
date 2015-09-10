class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: { greater_than: -1, less_than: 101 }, allow_blank: true
end
