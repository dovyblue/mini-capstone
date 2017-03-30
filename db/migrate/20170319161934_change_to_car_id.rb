class ChangeToCarId < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :product_id, :car_id
  end
end
