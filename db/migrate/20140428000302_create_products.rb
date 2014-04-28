class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :stock
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
