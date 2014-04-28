json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :username, :password, :city, :street, :zip, :phone, :created_at, :updated_at
  json.url customer_url(customer, format: :json)
end
