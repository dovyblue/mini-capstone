class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :cars, :price, :decimal, precision: 7, scale: 2
  end
end
