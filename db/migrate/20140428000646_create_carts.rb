class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :number_of_products
      t.float :total_price

      t.timestamps
    end
  end
end
