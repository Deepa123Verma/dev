class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.decimal :total

      t.timestamps
    end
  end
end