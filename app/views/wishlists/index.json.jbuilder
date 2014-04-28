json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :title, :customer_id, :number_of_products, :created_at, :updated_at
  json.url wishlist_url(wishlist, format: :json)
end
