class CreateCustomersProductsJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :customers, :products
  end
end
