class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
