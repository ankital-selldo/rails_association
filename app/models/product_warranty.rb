class ProductWarranty < ApplicationRecord
  belongs_to :product

  has_one :warranty

end