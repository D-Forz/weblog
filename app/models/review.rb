class Review < ApplicationRecord
  # allows us to use: @review.restaurant
  belongs_to :post

  validates :content, presence: true
end
