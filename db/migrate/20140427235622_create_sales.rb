class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :vendor_id
      t.integer :product_id
      t.integer :quantity
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
