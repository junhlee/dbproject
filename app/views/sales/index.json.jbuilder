json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_id, :vendor_id, :product_id, :quantity, :created_at, :updated_at
  json.url sale_url(sale, format: :json)
end
