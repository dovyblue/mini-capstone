class CreateCardetProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cardet_products do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.integer :order_id
      t.string :status
      t.timestamps
    end
  end
end
