class ChangeDataTypeDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :cars, :description, :text
  end

end
