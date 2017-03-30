class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :cars, through: :carted_products
  
  def freindly_time
    created_at.strftime("%A, %b %d")
  end

  def calculate_totals
    subtotal = 0
    carted_products.each do |product|
      subtotal += product.quantity * product.car.price
    end
    tax_rate = 0.08
    tax = subtotal * tax_rate
    total = subtotal + tax
    update(
      subtotal: subtotal,
      tax: tax,
      total: total
    )
  end
end
