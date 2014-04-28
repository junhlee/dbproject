class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :title
      t.integer :customer_id
      t.integer :number_of_products
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
