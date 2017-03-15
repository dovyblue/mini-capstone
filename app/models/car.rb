class Car < ApplicationRecord
  def sale_message
    return "Discount item!" if price <= 20000
    return "Everyday value!" if price > 20000
  end

  def tax
    tax_amount = price * 0.09
    return tax_amount.to_i
  end

  def total
    price + tax
  end
end
