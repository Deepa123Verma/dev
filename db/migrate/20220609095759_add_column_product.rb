class AddColumnProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :add_cart, :integer
  end
end
