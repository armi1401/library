class User < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  has_many :borrow
  has_many :users, through: :borrows
end
