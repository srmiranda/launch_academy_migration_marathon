class Reader < ActiveRecord::Base
  has_many :checkouts
  validates :email, presence: true
  validates :phone_number, presence: true
end
