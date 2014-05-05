class Cart < ActiveRecord::Base
  has_and_belongs_to_many :products
  belongs_to :customer

  def update_cart
    total = 0
    self.products.each do |product|
      total += product.price
    end
    self.total_price = total
    self.number_of_products = self.products.count
    self.save!
  end
end
