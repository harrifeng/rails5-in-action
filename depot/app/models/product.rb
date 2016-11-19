class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_then_or_equal_to: 0.01}
  validates :title, uniqueness: true
  
  validates :image_url, allow_blank: true, format: {
    with:   %r{\.(gif|jpg|png)\Z}i,
    message: 'must be URL image'
  }
end
