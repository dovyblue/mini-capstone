class ChangeProductToCar < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :car_id
  end
end
