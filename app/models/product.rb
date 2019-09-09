class Product < ApplicationRecord

 #  validates :name, presence: true, uniqueness: true
 #  validates :price, presence: true, numericality: {greater_than: 0}
 # # validates :price, numericality: true
 #  validates :image_url, presence: true
 #  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images

  def is_discounted?
    price <=1000000
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end

