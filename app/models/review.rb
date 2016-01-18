class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :body, presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Must be between 1 - 5" }
end
