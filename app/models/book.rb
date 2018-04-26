class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :published, presence: true
  validates :genre, presence: true
  has_many :borrows
  has_many :users, through: :borrows
end
