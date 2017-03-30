class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :cars, through: :carted_products
  
  def freindly_time
    created_at.strftime("%A, %b %d")
  end
end
