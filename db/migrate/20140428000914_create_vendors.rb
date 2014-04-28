class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :city
      t.string :street
      t.integer :zip
      t.integer :phone
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
