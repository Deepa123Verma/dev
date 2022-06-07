class CreateProductsUsersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products,:users  
  end
end
