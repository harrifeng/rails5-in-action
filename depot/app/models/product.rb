class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_then_or_equal_to: 0.01}
  validates :title, uniqueness: true
end
