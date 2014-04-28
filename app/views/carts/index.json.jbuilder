json.array!(@carts) do |cart|
  json.extract! cart, :id, :customer_id, :number_of_products, :total_price
  json.url cart_url(cart, format: :json)
end
