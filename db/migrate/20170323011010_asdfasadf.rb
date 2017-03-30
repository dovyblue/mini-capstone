class Asdfasadf < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :user_id, "numeric USING CAST(user_id AS numeric)"
    change_column :orders, :user_id, :decimal, precision: 9, scale: 2
    change_column :orders, :car_id, "numeric USING CAST(car_id AS numeric)"
    change_column :orders, :car_id, :decimal, precision: 9, scale: 2
 
  end
end
