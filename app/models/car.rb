class Car < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_cars
  has_many :categories, through: :category_cars
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products

  validates :model, presence: true
  validates :model, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :description, presence: true
  validates :description, length: { maximum: 500 }
  

  def sale_message
    return "Discount item!" if price <= 20000
    return "Everyday value!" else 
  end
  
  def tax
    tax_amount = price * 0.09
    return tax_amount.to_i
  end

  def total
    price + tax
  end
end
