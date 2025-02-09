class CreateWarranty < ActiveRecord::Migration[8.0]
  def change
    create_table :warranties do |t|
      t.string :warranty_period
      t.references :product_warranty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
