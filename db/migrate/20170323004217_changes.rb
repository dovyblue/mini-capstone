class Changes < ActiveRecord::Migration[5.0]
  def change
    # change_column :orders, :user_id, :integer
    # change_column :orders, :car_id, :integer
    # change_column :orders, :quantity, :integer
    # change_column :orders, :user_id, "numeric USING CAST(user_id AS numeric)"
    # change_column :orders, :user_id, :decimal, precision: 9, scale: 2
    # change_column :orders, :car_id, "numeric USING CAST(car_id AS numeric)"
    # change_column :orders, :car_id, :decimal, precision: 9, scale: 2
    # change_column :orders, :quantity, "numeric USING CAST(quantity AS numeric)"
    # change_column :orders, :quantity, :decimal, precision: 9, scale: 2

    # change_column :orders, :subtotal, :decimal, precision: 6, scale: 2
    # change_column :orders, :subtotal, "USING subtotal::numeric(6,2)"
    # change_column :orders, :tax, :decimal, precision: 5, scale: 2
    # change_column :orders, :tax, "numeric USING CAST(tax AS numeric)"
    # change_column :orders, :total, :decimal, precision: 6, scale: 2
    # change_column :orders, :total, "numeric USING CAST(total AS numeric)"

  end
end
