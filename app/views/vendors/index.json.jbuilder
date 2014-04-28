json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :username, :password, :city, :street, :zip, :phone, :created_at, :updated_at
  json.url vendor_url(vendor, format: :json)
end
