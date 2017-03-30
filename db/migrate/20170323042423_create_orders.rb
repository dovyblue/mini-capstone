class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :quantity
      t.integer :subtotal
      t.integer :tax
      t.integer :total

      t.timestamps
    end
  end
end
