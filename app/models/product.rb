class Product < ApplicationRecord

 #  validates :name, presence: true, uniqueness: true
 #  validates :price, presence: true, numericality: {greater_than: 0}
 # # validates :price, numericality: true
 #  validates :image_url, presence: true
 #  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images #array
  
  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :carted_products
  has_many :orders, through: :carted_products

  def is_discounted?
    price <=1000000
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def category_names
    categories.map { |category| category.name}
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end

