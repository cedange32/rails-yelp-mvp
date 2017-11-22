class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :name, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }
end
