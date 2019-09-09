class Image < ApplicationRecord

  belongs_to :product

  # def product
  #   Product.where(id: product_id)
  # end
  
end
