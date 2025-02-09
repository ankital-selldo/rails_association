class Warranty < ApplicationRecord
  validates :warranty_period, presence: true

  belongs_to :product_warranty
end