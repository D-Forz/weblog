class Review < ApplicationRecord
  belongs_to :post
  # allows us to use: @review.restaurant
end
