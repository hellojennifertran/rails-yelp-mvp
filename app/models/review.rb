class Review < ApplicationRecord
  belongs_to :restaurant
  validates presence: true
end
