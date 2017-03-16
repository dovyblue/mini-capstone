class ChangePriceToINteger < ActiveRecord::Migration[5.0]
  def change
    change_column :cars, :price, :integer
  end
end
